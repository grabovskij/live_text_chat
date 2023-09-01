import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:livetext_chat/data/api/visitor/models/pinned_file_state.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    required this.focusNode,
    required this.textEditingController,
    required this.visitorApi,
  });

  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final VisitorApi visitorApi;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  LoadedFileState? loadResult;

  @override
  void initState() {
    widget.visitorApi.pinnedFileState.listen((event) {
      event.maybeMap(
        orElse: () {
          loadResult = null;
        },
        loaded: (event) {
          loadResult = event;
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PinnedFile(visitorApi: widget.visitorApi),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Сообщение',
                ),
                focusNode: widget.focusNode,
                controller: widget.textEditingController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipFile(visitorApi: widget.visitorApi),
                      // GestureDetector(
                      //   onTap: () {
                      //     widget.focusNode.requestFocus();
                      //   },
                      //   child: const Padding(
                      //     padding: EdgeInsets.all(8),
                      //     child: Icon(
                      //       CupertinoIcons.smiley,
                      //       size: 22,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  RepaintBoundary(
                    child: StreamBuilder(
                      stream: widget.visitorApi.pinnedFileState,
                      builder: (context, _) => SendButton(
                        loadResult: loadResult,
                        textEditingController: widget.textEditingController,
                        visitorApi: widget.visitorApi,
                        focusNode: widget.focusNode,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void removeFile() {
    loadResult = null;
  }
}

class PinnedFile extends StatelessWidget {
  final VisitorApi visitorApi;

  const PinnedFile({
    required this.visitorApi,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: StreamBuilder<PinnedFileState>(
        stream: visitorApi.pinnedFileState,
        builder: (context, snapShot) {
          final event = snapShot.data;
          if (event != null) {
            return event.mapOrNull(loaded: (event) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          visitorApi.removeLoadedFile();
                        },
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
                          child: Icon(Icons.close),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          event.name,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  );
                }) ??
                const SizedBox.shrink();
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class ClipFile extends StatelessWidget {
  ClipFile({
    super.key,
    required this.visitorApi,
  });

  final ImagePicker _picker = ImagePicker();
  final VisitorApi visitorApi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final image = await _picker.pickImage(source: ImageSource.gallery);

        if (image == null) return;

        await visitorApi.loadFile(path: image.path);
      },
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: Icon(
          CupertinoIcons.paperclip,
          size: 22,
        ),
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  const SendButton({
    required this.textEditingController,
    required this.visitorApi,
    required this.focusNode,
    required this.loadResult,
    super.key,
  });

  final LoadedFileState? loadResult;
  final TextEditingController textEditingController;
  final VisitorApi visitorApi;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)))),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
        backgroundColor: MaterialStatePropertyAll(Colors.black),
        textStyle: MaterialStatePropertyAll(
          TextStyle(color: Colors.white),
        ),
      ),
      child: Row(
        children: const [
          Text(
            'Отправить',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: SizedBox(
              height: 16,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 20,
          )
        ],
      ),
      onPressed: () async {
        if (loadResult != null) {
          await visitorApi.sendFile(loadResult!);
        }

        if (textEditingController.text.isEmpty) {
          return;
        }

        visitorApi.sendMessage(textEditingController.text);
        textEditingController.text = '';
        focusNode.unfocus();
      },
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livetext_chat/navigation/app_router.dart';
import 'package:livetext_chat/internal/utils/files_types_util.dart';

class MessageFileContent extends StatelessWidget {
  final String fileName;
  final String fileUrl;

  const MessageFileContent({
    required this.fileName,
    required this.fileUrl,
    Key? key,
  }) : super(key: key);

  bool get isTypeImage => isImage(fileName);

  bool get isOtherType => !isTypeImage;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          if (isTypeImage)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    AppRouter.imagePreview,
                    queryParameters: {'imageUrl': fileUrl},
                  );
                },
                child: CachedNetworkImage(
                  imageUrl: fileUrl,
                  width: constraints.maxWidth / 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if (isOtherType)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.file_present_rounded),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(fileName),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

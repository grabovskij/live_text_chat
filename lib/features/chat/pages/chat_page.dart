import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/enums/status.dart';
import 'package:livetext_chat/data/api/visitor/events/dialog_state.dart';
import 'package:livetext_chat/data/api/visitor/events/events.dart';
import 'package:livetext_chat/data/api/visitor/events/update.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';
import 'package:livetext_chat/features/chat/widgets/employee_typing_widget.dart';
import 'package:livetext_chat/features/chat/widgets/file_loading_indicator_widget.dart';
import 'package:livetext_chat/features/chat/widgets/message_widget.dart';
import 'package:livetext_chat/features/chat/widgets/text_input_widget.dart';
import 'package:livetext_chat/features/notification/sound_notification.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final VisitorApi visitorApi;
  late TextEditingController textEditingController;
  final FocusNode focusNode = FocusNode();

  bool showInput = true;
  List<Event> eventCache = [];

  @override
  void initState() {
    visitorApi = context.read<VisitorApi>();
    textEditingController = TextEditingController();
    super.initState();

    focusNode.addListener(() {
      setState(() {});
    });

    visitorApi.pinnedFileState.listen((event) {
      log('[Loading stream]: $event');
    });

    visitorApi.events.listen(listenEvents);
  }

  void listenEvents(Event event) {
    event.mapOrNull(
      update: (event) {
        eventCache.add(event);

        if (event.update.messages.isNotEmpty) {
          event.update.messages.first.creator.maybeMap(
            visitor: (_) {},
            orElse: () {
              SoundNotification.notify();
            },
          );
        }
      },
      state: (event) => eventCache.add(event),
    );
    setState(() {});
  }
  void handleState(DialogStateEvent state) {}

  void handleUpdate(UpdateEvent update) {}

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            focusNode.unfocus();
          },
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: LayoutBuilder(
                  builder: (context, constraints) => SizedBox(
                    height: constraints.maxHeight,
                    child: CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return eventCache[index].maybeMap(
                                  orElse: SizedBox.shrink,
                                  update: onUpdate,
                                  state: onState,
                                );
                              },
                              childCount: eventCache.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FileLoadingIndicator(
                visitorApi: visitorApi,
              ),
              RepaintBoundary(
                child: EmployeeTyping(
                  visitorApi: visitorApi,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: LoadingAnimationWidget.waveDots(
                        color: Colors.black.withOpacity(0.85),
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
              !showInput
                  ? const SizedBox.shrink()
                  : TextInput(
                      focusNode: focusNode,
                      textEditingController: textEditingController,
                      visitorApi: visitorApi,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget onState(event) {
    showInput = event.state.showInput;

    Widget child = const SizedBox.shrink();

    switch (event.state.status) {
      case AppealStatus.inQueue:
        child = const Text('Обращение в очереди на обработку');
        break;
      case AppealStatus.assigned:
        child = Text(
            'Обращение назначено оператору ${event.state.employee?.name ?? ''}');
        break;
      case AppealStatus.aiBot:
        child = const Text('Обращение назначено боту');
        break;
      default:
        break;
    }

    return Align(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: child,
      ),
    );
  }

  Widget onUpdate(updateEvent) {
    final update = updateEvent.update;
    final messages = update.messages;

    List<Widget> messagesWidgets = [];

    for (var message in messages) {
      messagesWidgets.add(
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
          ),
          child: MessageWidget(
            message: message,
            visitorApi: visitorApi,
          ),
        ),
      );
    }

    return Column(
      children: [...messagesWidgets],
    );
  }
}

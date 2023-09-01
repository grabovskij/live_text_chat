import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/models/keyboard.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

import 'button_widget.dart';

class MessageTextContent extends StatelessWidget {
  final String content;
  final VisitorApi visitorApi;
  final Keyboard? keyboard;

  const MessageTextContent({
    required this.content,
    this.keyboard,
    Key? key,
    required this.visitorApi,
  }) : super(key: key);

  List<Widget> get buttons {
    var buttons = <Widget>[];

    for (var button in keyboard?.buttons ?? []) {
      buttons.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ButtonWidget(
            visitorApi: visitorApi,
            button: button,
          ),
        ),
      );
    }

    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(content),
        ...buttons,
      ],
    );
  }
}

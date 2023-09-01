import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/models/message.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

import 'message_body_widget.dart';
import 'message_file_content_widget.dart';
import 'message_text_content_widget.dart';

class MessageWidget extends StatelessWidget {
  final Message message;
  final VisitorApi visitorApi;

  const MessageWidget({
    required this.message,
    required this.visitorApi,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return message.map(
      text: (message) {
        final createdAt = DateTime.parse(message.createdAt);
        final creator = message.creator;
        final content = message.content;
        final keyboard = message.keyboard;

        return MessageBody(
          createdAt: createdAt,
          creator: creator,
          child: MessageTextContent(
            content: content,
            keyboard: keyboard,
            visitorApi: visitorApi,
          ),
        );
      },
      file: (message) {
        final createdAt = DateTime.parse(message.createdAt);
        final creator = message.creator;
        final fileName = message.name;
        final fileUrl = message.url;

        return MessageBody(
          createdAt: createdAt,
          creator: creator,
          child: MessageFileContent(
            fileName: fileName,
            fileUrl: fileUrl,
          ),
        );
      },
    );
  }
}

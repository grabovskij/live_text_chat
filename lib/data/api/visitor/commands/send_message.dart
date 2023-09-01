import 'command.dart';

class SendMessage extends Command {
  final String correlationId;
  final String content;

  SendMessage({
    required this.correlationId,
    required this.content,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'text',
      'correlationId': correlationId,
      'content': content,
    };
  }
}

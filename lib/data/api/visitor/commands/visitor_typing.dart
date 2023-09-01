import 'command.dart';

/// Событие набора текста клиентом

class VisitorTyping extends Command {
  final String content;

  VisitorTyping({
    required this.content,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'typing',
      'content': content,
    };
  }
}

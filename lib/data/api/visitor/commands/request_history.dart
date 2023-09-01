import 'package:livetext_chat/data/api/visitor/commands/command.dart';

/// Команда позволяет запросить ранее написанные в диалоге сообщения.
/// Сообщения придут в команде сервиса [update] в поле [messages].
/// Поле [messageId] должно содержать id сообщения в диалоге, от которого
/// необходимо получить более ранние сообщения.
/// Количество получаемых сообщений регулируется полем [offset].
/// Поле [offset] должно быть больше 0.

class RequestHistory extends Command {
  final String correlationId;
  final String messageId;
  final int offset;

  RequestHistory({
    required this.correlationId,
    required this.messageId,
    required this.offset,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'getHistory',
      'correlationId': correlationId,
      'messageId': messageId,
      'offset': offset,
    };
  }
}

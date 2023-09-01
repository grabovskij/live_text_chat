import 'command.dart';

/// Если пользователь нажал на кнопку,
/// то необходимо отправить в сервис параметр [payload] нажатой кнопки.

class PressButton extends Command {
  final String correlationId;
  final String payload;

  PressButton({
    required this.correlationId,
    required this.payload,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'correlationId': correlationId,
      'type': 'buttonPressed',
      'payload': payload,
    };
  }
}

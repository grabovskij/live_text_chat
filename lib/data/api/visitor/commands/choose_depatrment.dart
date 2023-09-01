import 'command.dart';

/// Команда выбора группы клиентом

class ChooseDepartment extends Command {
  final int id;
  final String correlationId;

  ChooseDepartment({
    required this.id,
    required this.correlationId,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'department',
      'correlationId': correlationId,
      'value': '$id',
    };
  }
}

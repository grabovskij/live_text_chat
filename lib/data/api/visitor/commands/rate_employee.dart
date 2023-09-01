import 'package:livetext_chat/data/api/visitor/enums/evaluate_employee.dart';

import 'command.dart';

/// Посетитель может оценить назначенного на него оператора,
/// но только в том случае, если поле [rating] в структуре employee в
/// событии state не определено. После отправки команды на проставление оценки,
/// клиенту будет передано событие [state], где в структуре [employee]
/// поле [rating] примет переданное в команде значение.
/// Поле [value] может иметь значение 1 (положительно) или 0 (отрицательно),
/// приведено к [Enum].

class RateEmployee extends Command {
  final EvaluatingEmployee value;
  final String correlationId;

  RateEmployee({
    required this.value,
    required this.correlationId,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'rating',
      'correlationId': correlationId,
      'value': '${value.index}',
    };
  }
}

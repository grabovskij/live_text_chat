import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';

part 'employee.g.dart';

/// Структура с информацией об операторе, на которого назначено обращение, где
///
/// [name] — никнейм;
/// [position] — роль;
/// [avatarUrl] — адрес картинки аватара;
/// [rating] — оценка;
///
/// Назначенному оператору можно поставить оценку.
/// Изначально, при назначении оператора, поле rating не задано.
/// Если это поле не задано, то оператору поставить оценку.
/// После установки оценки поле [rating] приобретет значение, равное оценке
/// указанной с помощью команды [rating].
/// Если обращение будет передано другому оператору,
/// то поле [rating] вновь будет не определено.

@freezed
class Employee with _$Employee {
  const factory Employee({
    required String name,
    required String position,
    required String avatarUrl,
    String? rating,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

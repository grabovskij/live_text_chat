import 'package:freezed_annotation/freezed_annotation.dart';

import 'employee.dart';

part 'creator.freezed.dart';

part 'creator.g.dart';

@Freezed(unionKey: 'type')
class Creator with _$Creator {
  const factory Creator.visitor() = _VisitorCreator;

  const factory Creator.system() = _SystemCreator;

  const factory Creator.bot() = _BotCreator;

  const factory Creator.employee({
    required Employee employee,
  }) = _EmployeeCreator;

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);
}

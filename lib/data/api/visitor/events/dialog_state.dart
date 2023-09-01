import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:livetext_chat/data/api/visitor/enums/employee_status.dart';
import 'package:livetext_chat/data/api/visitor/enums/status.dart';
import 'package:livetext_chat/data/api/visitor/models/employee.dart';

part 'dialog_state.freezed.dart';

part 'dialog_state.g.dart';

@freezed
class DialogStateEvent with _$DialogStateEvent {
  const factory DialogStateEvent({
    @JsonEnum() required AppealStatus status,
    @JsonEnum() EmployeeStatus? employeeStatus,
    Employee? employee,
    required bool showInput,
  }) = _DialogStateEvent;

  factory DialogStateEvent.fromJson(Map<String, dynamic> json) =>
      _$DialogStateEventFromJson(json);
}

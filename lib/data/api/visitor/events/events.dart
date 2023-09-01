import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:livetext_chat/data/api/visitor/events/dialog_state.dart';
import 'package:livetext_chat/data/api/visitor/events/department_request.dart';
import 'package:livetext_chat/data/api/visitor/events/result.dart';
import 'package:livetext_chat/data/api/visitor/events/update.dart';

part 'events.freezed.dart';

@freezed
class Event with _$Event {
  const factory Event.notImplemented() = _NotImplementedEvent;

  const factory Event.attributesRequest() = _AttributesRequestEvent;

  const factory Event.employeeTyping() = _EmployeeTypingEvent;

  const factory Event.update(UpdateEvent update) = _UpdateEvent;

  const factory Event.state(DialogStateEvent state) = _DialogStateEvent;

  const factory Event.result(Result result) = _ResultEvent;

  const factory Event.departmentsRequest(DepartmentRequest state) =
      _DepartmentsRequestEvent;
}

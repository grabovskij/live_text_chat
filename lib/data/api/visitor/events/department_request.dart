import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:livetext_chat/data/api/visitor/events/department.dart';

part 'department_request.freezed.dart';

part 'department_request.g.dart';

@freezed
class DepartmentRequest with _$DepartmentRequest {
  const factory DepartmentRequest({
    @Default([]) List<Department> departments,
  }) = _DepartmentRequest;

  factory DepartmentRequest.fromJson(Map<String, dynamic> json) =>
      _$DepartmentRequestFromJson(json);
}

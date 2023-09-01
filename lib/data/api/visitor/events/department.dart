import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';

part 'department.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required String id,
    required String name,
    required int order,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

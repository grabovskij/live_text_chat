// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../events/department_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartmentRequest _$$_DepartmentRequestFromJson(Map<String, dynamic> json) =>
    _$_DepartmentRequest(
      departments: (json['departments'] as List<dynamic>?)
              ?.map((e) => Department.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DepartmentRequestToJson(
        _$_DepartmentRequest instance) =>
    <String, dynamic>{
      'departments': instance.departments,
    };

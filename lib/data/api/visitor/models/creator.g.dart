// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitorCreator _$$_VisitorCreatorFromJson(Map<String, dynamic> json) =>
    _$_VisitorCreator(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_VisitorCreatorToJson(_$_VisitorCreator instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_SystemCreator _$$_SystemCreatorFromJson(Map<String, dynamic> json) =>
    _$_SystemCreator(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_SystemCreatorToJson(_$_SystemCreator instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_BotCreator _$$_BotCreatorFromJson(Map<String, dynamic> json) =>
    _$_BotCreator(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_BotCreatorToJson(_$_BotCreator instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$_EmployeeCreator _$$_EmployeeCreatorFromJson(Map<String, dynamic> json) =>
    _$_EmployeeCreator(
      employee: Employee.fromJson(json['employee'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_EmployeeCreatorToJson(_$_EmployeeCreator instance) =>
    <String, dynamic>{
      'employee': instance.employee,
      'type': instance.$type,
    };

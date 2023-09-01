// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../events/dialog_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DialogStateEvent _$$_DialogStateEventFromJson(Map<String, dynamic> json) =>
    _$_DialogStateEvent(
      status: $enumDecode(_$AppealStatusEnumMap, json['status']),
      employeeStatus:
          $enumDecodeNullable(_$EmployeeStatusEnumMap, json['employeeStatus']),
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
      showInput: json['showInput'] as bool,
    );

Map<String, dynamic> _$$_DialogStateEventToJson(_$_DialogStateEvent instance) =>
    <String, dynamic>{
      'status': _$AppealStatusEnumMap[instance.status]!,
      'employeeStatus': _$EmployeeStatusEnumMap[instance.employeeStatus],
      'employee': instance.employee,
      'showInput': instance.showInput,
    };

const _$AppealStatusEnumMap = {
  AppealStatus.unassigned: 'unassigned',
  AppealStatus.inQueue: 'inQueue',
  AppealStatus.assigned: 'assigned',
  AppealStatus.aiBot: 'aiBot',
};

const _$EmployeeStatusEnumMap = {
  EmployeeStatus.online: 'online',
  EmployeeStatus.offline: 'offline',
};

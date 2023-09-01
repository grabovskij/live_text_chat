// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employee _$$_EmployeeFromJson(Map<String, dynamic> json) => _$_Employee(
      name: json['name'] as String,
      position: json['position'] as String,
      avatarUrl: json['avatarUrl'] as String,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$$_EmployeeToJson(_$_Employee instance) =>
    <String, dynamic>{
      'name': instance.name,
      'position': instance.position,
      'avatarUrl': instance.avatarUrl,
      'rating': instance.rating,
    };

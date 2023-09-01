// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../events/update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateEvent _$$_UpdateEventFromJson(Map<String, dynamic> json) =>
    _$_UpdateEvent(
      createdAt: json['createdAt'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      correlationId: json['correlationId'] as String?,
    );

Map<String, dynamic> _$$_UpdateEventToJson(_$_UpdateEvent instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'messages': instance.messages,
      'correlationId': instance.correlationId,
    };

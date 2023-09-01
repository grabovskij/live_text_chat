// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      correlationId: json['correlationId'] as String,
      sentMessage: json['sentMessage'] == null
          ? null
          : SentMessage.fromJson(json['sentMessage'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'correlationId': instance.correlationId,
      'sentMessage': instance.sentMessage,
      'errors': instance.errors,
    };

_$_SentMessage _$$_SentMessageFromJson(Map<String, dynamic> json) =>
    _$_SentMessage(
      createdAt: json['createdAt'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_SentMessageToJson(_$_SentMessage instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'id': instance.id,
    };

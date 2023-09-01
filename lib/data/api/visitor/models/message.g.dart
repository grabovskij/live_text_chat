// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StringMessage _$$_StringMessageFromJson(Map<String, dynamic> json) =>
    _$_StringMessage(
      id: json['id'] as String,
      correlationId: json['correlationId'] as String?,
      createdAt: json['createdAt'] as String,
      content: json['content'] as String,
      creator: Creator.fromJson(json['creator'] as Map<String, dynamic>),
      keyboard: json['keyboard'] == null
          ? null
          : Keyboard.fromJson(json['keyboard'] as Map<String, dynamic>),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_StringMessageToJson(_$_StringMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'correlationId': instance.correlationId,
      'createdAt': instance.createdAt,
      'content': instance.content,
      'creator': instance.creator,
      'keyboard': instance.keyboard,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

_$_FileMessage _$$_FileMessageFromJson(Map<String, dynamic> json) =>
    _$_FileMessage(
      id: json['id'] as String,
      correlationId: json['correlationId'] as String?,
      createdAt: json['createdAt'] as String,
      creator: Creator.fromJson(json['creator'] as Map<String, dynamic>),
      name: json['name'] as String,
      url: json['url'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_FileMessageToJson(_$_FileMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'correlationId': instance.correlationId,
      'createdAt': instance.createdAt,
      'creator': instance.creator,
      'name': instance.name,
      'url': instance.url,
      'type': instance.$type,
    };

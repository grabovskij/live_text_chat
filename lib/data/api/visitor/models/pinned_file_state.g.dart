// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinned_file_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnpinnedFileState _$$UnpinnedFileStateFromJson(Map<String, dynamic> json) =>
    _$UnpinnedFileState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnpinnedFileStateToJson(_$UnpinnedFileState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$InUploadingProgressFileState _$$InUploadingProgressFileStateFromJson(
        Map<String, dynamic> json) =>
    _$InUploadingProgressFileState(
      count: json['count'] as int,
      totalCount: json['totalCount'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InUploadingProgressFileStateToJson(
        _$InUploadingProgressFileState instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalCount': instance.totalCount,
      'runtimeType': instance.$type,
    };

_$LoadedFileState _$$LoadedFileStateFromJson(Map<String, dynamic> json) =>
    _$LoadedFileState(
      name: json['name'] as String,
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedFileStateToJson(_$LoadedFileState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'runtimeType': instance.$type,
    };

_$ErrorFileState _$$ErrorFileStateFromJson(Map<String, dynamic> json) =>
    _$ErrorFileState(
      json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorFileStateToJson(_$ErrorFileState instance) =>
    <String, dynamic>{
      'description': instance.description,
      'runtimeType': instance.$type,
    };

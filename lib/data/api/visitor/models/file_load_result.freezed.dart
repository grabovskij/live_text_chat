// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_load_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileLoadResult _$FileLoadResultFromJson(Map<String, dynamic> json) {
  return _FileLoadResult.fromJson(json);
}

/// @nodoc
mixin _$FileLoadResult {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileLoadResultCopyWith<FileLoadResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileLoadResultCopyWith<$Res> {
  factory $FileLoadResultCopyWith(
          FileLoadResult value, $Res Function(FileLoadResult) then) =
      _$FileLoadResultCopyWithImpl<$Res, FileLoadResult>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$FileLoadResultCopyWithImpl<$Res, $Val extends FileLoadResult>
    implements $FileLoadResultCopyWith<$Res> {
  _$FileLoadResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FileLoadResultCopyWith<$Res>
    implements $FileLoadResultCopyWith<$Res> {
  factory _$$_FileLoadResultCopyWith(
          _$_FileLoadResult value, $Res Function(_$_FileLoadResult) then) =
      __$$_FileLoadResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_FileLoadResultCopyWithImpl<$Res>
    extends _$FileLoadResultCopyWithImpl<$Res, _$_FileLoadResult>
    implements _$$_FileLoadResultCopyWith<$Res> {
  __$$_FileLoadResultCopyWithImpl(
      _$_FileLoadResult _value, $Res Function(_$_FileLoadResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_FileLoadResult(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileLoadResult implements _FileLoadResult {
  const _$_FileLoadResult({required this.name, required this.url});

  factory _$_FileLoadResult.fromJson(Map<String, dynamic> json) =>
      _$$_FileLoadResultFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'FileLoadResult(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileLoadResult &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileLoadResultCopyWith<_$_FileLoadResult> get copyWith =>
      __$$_FileLoadResultCopyWithImpl<_$_FileLoadResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileLoadResultToJson(
      this,
    );
  }
}

abstract class _FileLoadResult implements FileLoadResult {
  const factory _FileLoadResult(
      {required final String name,
      required final String url}) = _$_FileLoadResult;

  factory _FileLoadResult.fromJson(Map<String, dynamic> json) =
      _$_FileLoadResult.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_FileLoadResultCopyWith<_$_FileLoadResult> get copyWith =>
      throw _privateConstructorUsedError;
}

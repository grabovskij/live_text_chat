// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String get correlationId => throw _privateConstructorUsedError;
  SentMessage? get sentMessage => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String correlationId, SentMessage? sentMessage, List<String> errors});

  $SentMessageCopyWith<$Res>? get sentMessage;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correlationId = null,
    Object? sentMessage = freezed,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      correlationId: null == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String,
      sentMessage: freezed == sentMessage
          ? _value.sentMessage
          : sentMessage // ignore: cast_nullable_to_non_nullable
              as SentMessage?,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SentMessageCopyWith<$Res>? get sentMessage {
    if (_value.sentMessage == null) {
      return null;
    }

    return $SentMessageCopyWith<$Res>(_value.sentMessage!, (value) {
      return _then(_value.copyWith(sentMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String correlationId, SentMessage? sentMessage, List<String> errors});

  @override
  $SentMessageCopyWith<$Res>? get sentMessage;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correlationId = null,
    Object? sentMessage = freezed,
    Object? errors = null,
  }) {
    return _then(_$_Result(
      correlationId: null == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String,
      sentMessage: freezed == sentMessage
          ? _value.sentMessage
          : sentMessage // ignore: cast_nullable_to_non_nullable
              as SentMessage?,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {required this.correlationId,
      this.sentMessage,
      final List<String> errors = const <String>[]})
      : _errors = errors;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String correlationId;
  @override
  final SentMessage? sentMessage;
  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'Result(correlationId: $correlationId, sentMessage: $sentMessage, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.correlationId, correlationId) ||
                other.correlationId == correlationId) &&
            (identical(other.sentMessage, sentMessage) ||
                other.sentMessage == sentMessage) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, correlationId, sentMessage,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String correlationId,
      final SentMessage? sentMessage,
      final List<String> errors}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String get correlationId;
  @override
  SentMessage? get sentMessage;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

SentMessage _$SentMessageFromJson(Map<String, dynamic> json) {
  return _SentMessage.fromJson(json);
}

/// @nodoc
mixin _$SentMessage {
  String get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentMessageCopyWith<SentMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentMessageCopyWith<$Res> {
  factory $SentMessageCopyWith(
          SentMessage value, $Res Function(SentMessage) then) =
      _$SentMessageCopyWithImpl<$Res, SentMessage>;
  @useResult
  $Res call({String createdAt, String id});
}

/// @nodoc
class _$SentMessageCopyWithImpl<$Res, $Val extends SentMessage>
    implements $SentMessageCopyWith<$Res> {
  _$SentMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SentMessageCopyWith<$Res>
    implements $SentMessageCopyWith<$Res> {
  factory _$$_SentMessageCopyWith(
          _$_SentMessage value, $Res Function(_$_SentMessage) then) =
      __$$_SentMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String createdAt, String id});
}

/// @nodoc
class __$$_SentMessageCopyWithImpl<$Res>
    extends _$SentMessageCopyWithImpl<$Res, _$_SentMessage>
    implements _$$_SentMessageCopyWith<$Res> {
  __$$_SentMessageCopyWithImpl(
      _$_SentMessage _value, $Res Function(_$_SentMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$_SentMessage(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SentMessage implements _SentMessage {
  const _$_SentMessage({required this.createdAt, required this.id});

  factory _$_SentMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SentMessageFromJson(json);

  @override
  final String createdAt;
  @override
  final String id;

  @override
  String toString() {
    return 'SentMessage(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SentMessage &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SentMessageCopyWith<_$_SentMessage> get copyWith =>
      __$$_SentMessageCopyWithImpl<_$_SentMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SentMessageToJson(
      this,
    );
  }
}

abstract class _SentMessage implements SentMessage {
  const factory _SentMessage(
      {required final String createdAt,
      required final String id}) = _$_SentMessage;

  factory _SentMessage.fromJson(Map<String, dynamic> json) =
      _$_SentMessage.fromJson;

  @override
  String get createdAt;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_SentMessageCopyWith<_$_SentMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

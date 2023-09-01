// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../events/update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateEvent _$UpdateEventFromJson(Map<String, dynamic> json) {
  return _UpdateEvent.fromJson(json);
}

/// @nodoc
mixin _$UpdateEvent {
  String get createdAt => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  String? get correlationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateEventCopyWith<UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEventCopyWith<$Res> {
  factory $UpdateEventCopyWith(
          UpdateEvent value, $Res Function(UpdateEvent) then) =
      _$UpdateEventCopyWithImpl<$Res, UpdateEvent>;
  @useResult
  $Res call({String createdAt, List<Message> messages, String? correlationId});
}

/// @nodoc
class _$UpdateEventCopyWithImpl<$Res, $Val extends UpdateEvent>
    implements $UpdateEventCopyWith<$Res> {
  _$UpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? messages = null,
    Object? correlationId = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res>
    implements $UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String createdAt, List<Message> messages, String? correlationId});
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$_UpdateEvent>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? messages = null,
    Object? correlationId = freezed,
  }) {
    return _then(_$_UpdateEvent(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateEvent with DiagnosticableTreeMixin implements _UpdateEvent {
  const _$_UpdateEvent(
      {required this.createdAt,
      required final List<Message> messages,
      this.correlationId})
      : _messages = messages;

  factory _$_UpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateEventFromJson(json);

  @override
  final String createdAt;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? correlationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateEvent(createdAt: $createdAt, messages: $messages, correlationId: $correlationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateEvent'))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('messages', messages))
      ..add(DiagnosticsProperty('correlationId', correlationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEvent &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.correlationId, correlationId) ||
                other.correlationId == correlationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt,
      const DeepCollectionEquality().hash(_messages), correlationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      __$$_UpdateEventCopyWithImpl<_$_UpdateEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateEventToJson(
      this,
    );
  }
}

abstract class _UpdateEvent implements UpdateEvent {
  const factory _UpdateEvent(
      {required final String createdAt,
      required final List<Message> messages,
      final String? correlationId}) = _$_UpdateEvent;

  factory _UpdateEvent.fromJson(Map<String, dynamic> json) =
      _$_UpdateEvent.fromJson;

  @override
  String get createdAt;
  @override
  List<Message> get messages;
  @override
  String? get correlationId;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

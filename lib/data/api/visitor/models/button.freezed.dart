// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Button _$ButtonFromJson(Map<String, dynamic> json) {
  return _Button.fromJson(json);
}

/// @nodoc
mixin _$Button {
  String get label => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ButtonCopyWith<Button> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonCopyWith<$Res> {
  factory $ButtonCopyWith(Button value, $Res Function(Button) then) =
      _$ButtonCopyWithImpl<$Res, Button>;
  @useResult
  $Res call({String label, String payload, String? url});
}

/// @nodoc
class _$ButtonCopyWithImpl<$Res, $Val extends Button>
    implements $ButtonCopyWith<$Res> {
  _$ButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? payload = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ButtonCopyWith<$Res> implements $ButtonCopyWith<$Res> {
  factory _$$_ButtonCopyWith(_$_Button value, $Res Function(_$_Button) then) =
      __$$_ButtonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String payload, String? url});
}

/// @nodoc
class __$$_ButtonCopyWithImpl<$Res>
    extends _$ButtonCopyWithImpl<$Res, _$_Button>
    implements _$$_ButtonCopyWith<$Res> {
  __$$_ButtonCopyWithImpl(_$_Button _value, $Res Function(_$_Button) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? payload = null,
    Object? url = freezed,
  }) {
    return _then(_$_Button(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Button implements _Button {
  const _$_Button({required this.label, required this.payload, this.url});

  factory _$_Button.fromJson(Map<String, dynamic> json) =>
      _$$_ButtonFromJson(json);

  @override
  final String label;
  @override
  final String payload;
  @override
  final String? url;

  @override
  String toString() {
    return 'Button(label: $label, payload: $payload, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Button &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, payload, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ButtonCopyWith<_$_Button> get copyWith =>
      __$$_ButtonCopyWithImpl<_$_Button>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ButtonToJson(
      this,
    );
  }
}

abstract class _Button implements Button {
  const factory _Button(
      {required final String label,
      required final String payload,
      final String? url}) = _$_Button;

  factory _Button.fromJson(Map<String, dynamic> json) = _$_Button.fromJson;

  @override
  String get label;
  @override
  String get payload;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_ButtonCopyWith<_$_Button> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Keyboard _$KeyboardFromJson(Map<String, dynamic> json) {
  return _Keyboard.fromJson(json);
}

/// @nodoc
mixin _$Keyboard {
  List<Button> get buttons => throw _privateConstructorUsedError;
  bool get pressed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyboardCopyWith<Keyboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardCopyWith<$Res> {
  factory $KeyboardCopyWith(Keyboard value, $Res Function(Keyboard) then) =
      _$KeyboardCopyWithImpl<$Res, Keyboard>;
  @useResult
  $Res call({List<Button> buttons, bool pressed});
}

/// @nodoc
class _$KeyboardCopyWithImpl<$Res, $Val extends Keyboard>
    implements $KeyboardCopyWith<$Res> {
  _$KeyboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttons = null,
    Object? pressed = null,
  }) {
    return _then(_value.copyWith(
      buttons: null == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<Button>,
      pressed: null == pressed
          ? _value.pressed
          : pressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeyboardCopyWith<$Res> implements $KeyboardCopyWith<$Res> {
  factory _$$_KeyboardCopyWith(
          _$_Keyboard value, $Res Function(_$_Keyboard) then) =
      __$$_KeyboardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Button> buttons, bool pressed});
}

/// @nodoc
class __$$_KeyboardCopyWithImpl<$Res>
    extends _$KeyboardCopyWithImpl<$Res, _$_Keyboard>
    implements _$$_KeyboardCopyWith<$Res> {
  __$$_KeyboardCopyWithImpl(
      _$_Keyboard _value, $Res Function(_$_Keyboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttons = null,
    Object? pressed = null,
  }) {
    return _then(_$_Keyboard(
      buttons: null == buttons
          ? _value._buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<Button>,
      pressed: null == pressed
          ? _value.pressed
          : pressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Keyboard with DiagnosticableTreeMixin implements _Keyboard {
  const _$_Keyboard(
      {required final List<Button> buttons, required this.pressed})
      : _buttons = buttons;

  factory _$_Keyboard.fromJson(Map<String, dynamic> json) =>
      _$$_KeyboardFromJson(json);

  final List<Button> _buttons;
  @override
  List<Button> get buttons {
    if (_buttons is EqualUnmodifiableListView) return _buttons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buttons);
  }

  @override
  final bool pressed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Keyboard(buttons: $buttons, pressed: $pressed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Keyboard'))
      ..add(DiagnosticsProperty('buttons', buttons))
      ..add(DiagnosticsProperty('pressed', pressed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Keyboard &&
            const DeepCollectionEquality().equals(other._buttons, _buttons) &&
            (identical(other.pressed, pressed) || other.pressed == pressed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_buttons), pressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeyboardCopyWith<_$_Keyboard> get copyWith =>
      __$$_KeyboardCopyWithImpl<_$_Keyboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyboardToJson(
      this,
    );
  }
}

abstract class _Keyboard implements Keyboard {
  const factory _Keyboard(
      {required final List<Button> buttons,
      required final bool pressed}) = _$_Keyboard;

  factory _Keyboard.fromJson(Map<String, dynamic> json) = _$_Keyboard.fromJson;

  @override
  List<Button> get buttons;
  @override
  bool get pressed;
  @override
  @JsonKey(ignore: true)
  _$$_KeyboardCopyWith<_$_Keyboard> get copyWith =>
      throw _privateConstructorUsedError;
}

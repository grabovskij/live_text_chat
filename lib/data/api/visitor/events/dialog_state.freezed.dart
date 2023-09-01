// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DialogStateEvent _$DialogStateEventFromJson(Map<String, dynamic> json) {
  return _DialogStateEvent.fromJson(json);
}

/// @nodoc
mixin _$DialogStateEvent {
  @JsonEnum()
  AppealStatus get status => throw _privateConstructorUsedError;
  @JsonEnum()
  EmployeeStatus? get employeeStatus => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;
  bool get showInput => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DialogStateEventCopyWith<DialogStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogStateEventCopyWith<$Res> {
  factory $DialogStateEventCopyWith(
          DialogStateEvent value, $Res Function(DialogStateEvent) then) =
      _$DialogStateEventCopyWithImpl<$Res, DialogStateEvent>;
  @useResult
  $Res call(
      {@JsonEnum() AppealStatus status,
      @JsonEnum() EmployeeStatus? employeeStatus,
      Employee? employee,
      bool showInput});

  $EmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class _$DialogStateEventCopyWithImpl<$Res, $Val extends DialogStateEvent>
    implements $DialogStateEventCopyWith<$Res> {
  _$DialogStateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? employeeStatus = freezed,
    Object? employee = freezed,
    Object? showInput = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppealStatus,
      employeeStatus: freezed == employeeStatus
          ? _value.employeeStatus
          : employeeStatus // ignore: cast_nullable_to_non_nullable
              as EmployeeStatus?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      showInput: null == showInput
          ? _value.showInput
          : showInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DialogStateEventCopyWith<$Res>
    implements $DialogStateEventCopyWith<$Res> {
  factory _$$_DialogStateEventCopyWith(
          _$_DialogStateEvent value, $Res Function(_$_DialogStateEvent) then) =
      __$$_DialogStateEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonEnum() AppealStatus status,
      @JsonEnum() EmployeeStatus? employeeStatus,
      Employee? employee,
      bool showInput});

  @override
  $EmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$_DialogStateEventCopyWithImpl<$Res>
    extends _$DialogStateEventCopyWithImpl<$Res, _$_DialogStateEvent>
    implements _$$_DialogStateEventCopyWith<$Res> {
  __$$_DialogStateEventCopyWithImpl(
      _$_DialogStateEvent _value, $Res Function(_$_DialogStateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? employeeStatus = freezed,
    Object? employee = freezed,
    Object? showInput = null,
  }) {
    return _then(_$_DialogStateEvent(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppealStatus,
      employeeStatus: freezed == employeeStatus
          ? _value.employeeStatus
          : employeeStatus // ignore: cast_nullable_to_non_nullable
              as EmployeeStatus?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      showInput: null == showInput
          ? _value.showInput
          : showInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DialogStateEvent implements _DialogStateEvent {
  const _$_DialogStateEvent(
      {@JsonEnum() required this.status,
      @JsonEnum() this.employeeStatus,
      this.employee,
      required this.showInput});

  factory _$_DialogStateEvent.fromJson(Map<String, dynamic> json) =>
      _$$_DialogStateEventFromJson(json);

  @override
  @JsonEnum()
  final AppealStatus status;
  @override
  @JsonEnum()
  final EmployeeStatus? employeeStatus;
  @override
  final Employee? employee;
  @override
  final bool showInput;

  @override
  String toString() {
    return 'DialogStateEvent(status: $status, employeeStatus: $employeeStatus, employee: $employee, showInput: $showInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DialogStateEvent &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.employeeStatus, employeeStatus) ||
                other.employeeStatus == employeeStatus) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.showInput, showInput) ||
                other.showInput == showInput));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, employeeStatus, employee, showInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DialogStateEventCopyWith<_$_DialogStateEvent> get copyWith =>
      __$$_DialogStateEventCopyWithImpl<_$_DialogStateEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DialogStateEventToJson(
      this,
    );
  }
}

abstract class _DialogStateEvent implements DialogStateEvent {
  const factory _DialogStateEvent(
      {@JsonEnum() required final AppealStatus status,
      @JsonEnum() final EmployeeStatus? employeeStatus,
      final Employee? employee,
      required final bool showInput}) = _$_DialogStateEvent;

  factory _DialogStateEvent.fromJson(Map<String, dynamic> json) =
      _$_DialogStateEvent.fromJson;

  @override
  @JsonEnum()
  AppealStatus get status;
  @override
  @JsonEnum()
  EmployeeStatus? get employeeStatus;
  @override
  Employee? get employee;
  @override
  bool get showInput;
  @override
  @JsonKey(ignore: true)
  _$$_DialogStateEventCopyWith<_$_DialogStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

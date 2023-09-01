// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepartmentRequest _$DepartmentRequestFromJson(Map<String, dynamic> json) {
  return _DepartmentRequest.fromJson(json);
}

/// @nodoc
mixin _$DepartmentRequest {
  List<Department> get departments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentRequestCopyWith<DepartmentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentRequestCopyWith<$Res> {
  factory $DepartmentRequestCopyWith(
          DepartmentRequest value, $Res Function(DepartmentRequest) then) =
      _$DepartmentRequestCopyWithImpl<$Res, DepartmentRequest>;
  @useResult
  $Res call({List<Department> departments});
}

/// @nodoc
class _$DepartmentRequestCopyWithImpl<$Res, $Val extends DepartmentRequest>
    implements $DepartmentRequestCopyWith<$Res> {
  _$DepartmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_value.copyWith(
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentRequestCopyWith<$Res>
    implements $DepartmentRequestCopyWith<$Res> {
  factory _$$_DepartmentRequestCopyWith(_$_DepartmentRequest value,
          $Res Function(_$_DepartmentRequest) then) =
      __$$_DepartmentRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Department> departments});
}

/// @nodoc
class __$$_DepartmentRequestCopyWithImpl<$Res>
    extends _$DepartmentRequestCopyWithImpl<$Res, _$_DepartmentRequest>
    implements _$$_DepartmentRequestCopyWith<$Res> {
  __$$_DepartmentRequestCopyWithImpl(
      _$_DepartmentRequest _value, $Res Function(_$_DepartmentRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_$_DepartmentRequest(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentRequest implements _DepartmentRequest {
  const _$_DepartmentRequest({final List<Department> departments = const []})
      : _departments = departments;

  factory _$_DepartmentRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentRequestFromJson(json);

  final List<Department> _departments;
  @override
  @JsonKey()
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'DepartmentRequest(departments: $departments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentRequest &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_departments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentRequestCopyWith<_$_DepartmentRequest> get copyWith =>
      __$$_DepartmentRequestCopyWithImpl<_$_DepartmentRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentRequestToJson(
      this,
    );
  }
}

abstract class _DepartmentRequest implements DepartmentRequest {
  const factory _DepartmentRequest({final List<Department> departments}) =
      _$_DepartmentRequest;

  factory _DepartmentRequest.fromJson(Map<String, dynamic> json) =
      _$_DepartmentRequest.fromJson;

  @override
  List<Department> get departments;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentRequestCopyWith<_$_DepartmentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Creator _$CreatorFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'visitor':
      return _VisitorCreator.fromJson(json);
    case 'system':
      return _SystemCreator.fromJson(json);
    case 'bot':
      return _BotCreator.fromJson(json);
    case 'employee':
      return _EmployeeCreator.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Creator', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Creator {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitor,
    required TResult Function() system,
    required TResult Function() bot,
    required TResult Function(Employee employee) employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitor,
    TResult? Function()? system,
    TResult? Function()? bot,
    TResult? Function(Employee employee)? employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitor,
    TResult Function()? system,
    TResult Function()? bot,
    TResult Function(Employee employee)? employee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VisitorCreator value) visitor,
    required TResult Function(_SystemCreator value) system,
    required TResult Function(_BotCreator value) bot,
    required TResult Function(_EmployeeCreator value) employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VisitorCreator value)? visitor,
    TResult? Function(_SystemCreator value)? system,
    TResult? Function(_BotCreator value)? bot,
    TResult? Function(_EmployeeCreator value)? employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VisitorCreator value)? visitor,
    TResult Function(_SystemCreator value)? system,
    TResult Function(_BotCreator value)? bot,
    TResult Function(_EmployeeCreator value)? employee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorCopyWith<$Res> {
  factory $CreatorCopyWith(Creator value, $Res Function(Creator) then) =
      _$CreatorCopyWithImpl<$Res, Creator>;
}

/// @nodoc
class _$CreatorCopyWithImpl<$Res, $Val extends Creator>
    implements $CreatorCopyWith<$Res> {
  _$CreatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VisitorCreatorCopyWith<$Res> {
  factory _$$_VisitorCreatorCopyWith(
          _$_VisitorCreator value, $Res Function(_$_VisitorCreator) then) =
      __$$_VisitorCreatorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VisitorCreatorCopyWithImpl<$Res>
    extends _$CreatorCopyWithImpl<$Res, _$_VisitorCreator>
    implements _$$_VisitorCreatorCopyWith<$Res> {
  __$$_VisitorCreatorCopyWithImpl(
      _$_VisitorCreator _value, $Res Function(_$_VisitorCreator) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_VisitorCreator implements _VisitorCreator {
  const _$_VisitorCreator({final String? $type}) : $type = $type ?? 'visitor';

  factory _$_VisitorCreator.fromJson(Map<String, dynamic> json) =>
      _$$_VisitorCreatorFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Creator.visitor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VisitorCreator);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitor,
    required TResult Function() system,
    required TResult Function() bot,
    required TResult Function(Employee employee) employee,
  }) {
    return visitor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitor,
    TResult? Function()? system,
    TResult? Function()? bot,
    TResult? Function(Employee employee)? employee,
  }) {
    return visitor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitor,
    TResult Function()? system,
    TResult Function()? bot,
    TResult Function(Employee employee)? employee,
    required TResult orElse(),
  }) {
    if (visitor != null) {
      return visitor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VisitorCreator value) visitor,
    required TResult Function(_SystemCreator value) system,
    required TResult Function(_BotCreator value) bot,
    required TResult Function(_EmployeeCreator value) employee,
  }) {
    return visitor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VisitorCreator value)? visitor,
    TResult? Function(_SystemCreator value)? system,
    TResult? Function(_BotCreator value)? bot,
    TResult? Function(_EmployeeCreator value)? employee,
  }) {
    return visitor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VisitorCreator value)? visitor,
    TResult Function(_SystemCreator value)? system,
    TResult Function(_BotCreator value)? bot,
    TResult Function(_EmployeeCreator value)? employee,
    required TResult orElse(),
  }) {
    if (visitor != null) {
      return visitor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitorCreatorToJson(
      this,
    );
  }
}

abstract class _VisitorCreator implements Creator {
  const factory _VisitorCreator() = _$_VisitorCreator;

  factory _VisitorCreator.fromJson(Map<String, dynamic> json) =
      _$_VisitorCreator.fromJson;
}

/// @nodoc
abstract class _$$_SystemCreatorCopyWith<$Res> {
  factory _$$_SystemCreatorCopyWith(
          _$_SystemCreator value, $Res Function(_$_SystemCreator) then) =
      __$$_SystemCreatorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SystemCreatorCopyWithImpl<$Res>
    extends _$CreatorCopyWithImpl<$Res, _$_SystemCreator>
    implements _$$_SystemCreatorCopyWith<$Res> {
  __$$_SystemCreatorCopyWithImpl(
      _$_SystemCreator _value, $Res Function(_$_SystemCreator) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_SystemCreator implements _SystemCreator {
  const _$_SystemCreator({final String? $type}) : $type = $type ?? 'system';

  factory _$_SystemCreator.fromJson(Map<String, dynamic> json) =>
      _$$_SystemCreatorFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Creator.system()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SystemCreator);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitor,
    required TResult Function() system,
    required TResult Function() bot,
    required TResult Function(Employee employee) employee,
  }) {
    return system();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitor,
    TResult? Function()? system,
    TResult? Function()? bot,
    TResult? Function(Employee employee)? employee,
  }) {
    return system?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitor,
    TResult Function()? system,
    TResult Function()? bot,
    TResult Function(Employee employee)? employee,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VisitorCreator value) visitor,
    required TResult Function(_SystemCreator value) system,
    required TResult Function(_BotCreator value) bot,
    required TResult Function(_EmployeeCreator value) employee,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VisitorCreator value)? visitor,
    TResult? Function(_SystemCreator value)? system,
    TResult? Function(_BotCreator value)? bot,
    TResult? Function(_EmployeeCreator value)? employee,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VisitorCreator value)? visitor,
    TResult Function(_SystemCreator value)? system,
    TResult Function(_BotCreator value)? bot,
    TResult Function(_EmployeeCreator value)? employee,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SystemCreatorToJson(
      this,
    );
  }
}

abstract class _SystemCreator implements Creator {
  const factory _SystemCreator() = _$_SystemCreator;

  factory _SystemCreator.fromJson(Map<String, dynamic> json) =
      _$_SystemCreator.fromJson;
}

/// @nodoc
abstract class _$$_BotCreatorCopyWith<$Res> {
  factory _$$_BotCreatorCopyWith(
          _$_BotCreator value, $Res Function(_$_BotCreator) then) =
      __$$_BotCreatorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BotCreatorCopyWithImpl<$Res>
    extends _$CreatorCopyWithImpl<$Res, _$_BotCreator>
    implements _$$_BotCreatorCopyWith<$Res> {
  __$$_BotCreatorCopyWithImpl(
      _$_BotCreator _value, $Res Function(_$_BotCreator) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_BotCreator implements _BotCreator {
  const _$_BotCreator({final String? $type}) : $type = $type ?? 'bot';

  factory _$_BotCreator.fromJson(Map<String, dynamic> json) =>
      _$$_BotCreatorFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Creator.bot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BotCreator);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitor,
    required TResult Function() system,
    required TResult Function() bot,
    required TResult Function(Employee employee) employee,
  }) {
    return bot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitor,
    TResult? Function()? system,
    TResult? Function()? bot,
    TResult? Function(Employee employee)? employee,
  }) {
    return bot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitor,
    TResult Function()? system,
    TResult Function()? bot,
    TResult Function(Employee employee)? employee,
    required TResult orElse(),
  }) {
    if (bot != null) {
      return bot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VisitorCreator value) visitor,
    required TResult Function(_SystemCreator value) system,
    required TResult Function(_BotCreator value) bot,
    required TResult Function(_EmployeeCreator value) employee,
  }) {
    return bot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VisitorCreator value)? visitor,
    TResult? Function(_SystemCreator value)? system,
    TResult? Function(_BotCreator value)? bot,
    TResult? Function(_EmployeeCreator value)? employee,
  }) {
    return bot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VisitorCreator value)? visitor,
    TResult Function(_SystemCreator value)? system,
    TResult Function(_BotCreator value)? bot,
    TResult Function(_EmployeeCreator value)? employee,
    required TResult orElse(),
  }) {
    if (bot != null) {
      return bot(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BotCreatorToJson(
      this,
    );
  }
}

abstract class _BotCreator implements Creator {
  const factory _BotCreator() = _$_BotCreator;

  factory _BotCreator.fromJson(Map<String, dynamic> json) =
      _$_BotCreator.fromJson;
}

/// @nodoc
abstract class _$$_EmployeeCreatorCopyWith<$Res> {
  factory _$$_EmployeeCreatorCopyWith(
          _$_EmployeeCreator value, $Res Function(_$_EmployeeCreator) then) =
      __$$_EmployeeCreatorCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$_EmployeeCreatorCopyWithImpl<$Res>
    extends _$CreatorCopyWithImpl<$Res, _$_EmployeeCreator>
    implements _$$_EmployeeCreatorCopyWith<$Res> {
  __$$_EmployeeCreatorCopyWithImpl(
      _$_EmployeeCreator _value, $Res Function(_$_EmployeeCreator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$_EmployeeCreator(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeCreator implements _EmployeeCreator {
  const _$_EmployeeCreator({required this.employee, final String? $type})
      : $type = $type ?? 'employee';

  factory _$_EmployeeCreator.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeCreatorFromJson(json);

  @override
  final Employee employee;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Creator.employee(employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeCreator &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeCreatorCopyWith<_$_EmployeeCreator> get copyWith =>
      __$$_EmployeeCreatorCopyWithImpl<_$_EmployeeCreator>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitor,
    required TResult Function() system,
    required TResult Function() bot,
    required TResult Function(Employee employee) employee,
  }) {
    return employee(this.employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitor,
    TResult? Function()? system,
    TResult? Function()? bot,
    TResult? Function(Employee employee)? employee,
  }) {
    return employee?.call(this.employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitor,
    TResult Function()? system,
    TResult Function()? bot,
    TResult Function(Employee employee)? employee,
    required TResult orElse(),
  }) {
    if (employee != null) {
      return employee(this.employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VisitorCreator value) visitor,
    required TResult Function(_SystemCreator value) system,
    required TResult Function(_BotCreator value) bot,
    required TResult Function(_EmployeeCreator value) employee,
  }) {
    return employee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VisitorCreator value)? visitor,
    TResult? Function(_SystemCreator value)? system,
    TResult? Function(_BotCreator value)? bot,
    TResult? Function(_EmployeeCreator value)? employee,
  }) {
    return employee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VisitorCreator value)? visitor,
    TResult Function(_SystemCreator value)? system,
    TResult Function(_BotCreator value)? bot,
    TResult Function(_EmployeeCreator value)? employee,
    required TResult orElse(),
  }) {
    if (employee != null) {
      return employee(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeCreatorToJson(
      this,
    );
  }
}

abstract class _EmployeeCreator implements Creator {
  const factory _EmployeeCreator({required final Employee employee}) =
      _$_EmployeeCreator;

  factory _EmployeeCreator.fromJson(Map<String, dynamic> json) =
      _$_EmployeeCreator.fromJson;

  Employee get employee;
  @JsonKey(ignore: true)
  _$$_EmployeeCreatorCopyWith<_$_EmployeeCreator> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pinned_file_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PinnedFileState _$PinnedFileStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unpinned':
      return UnpinnedFileState.fromJson(json);
    case 'inUploadingProgress':
      return InUploadingProgressFileState.fromJson(json);
    case 'loaded':
      return LoadedFileState.fromJson(json);
    case 'error':
      return ErrorFileState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PinnedFileState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PinnedFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unpinned,
    required TResult Function(int count, int totalCount) inUploadingProgress,
    required TResult Function(String name, String url) loaded,
    required TResult Function(String description) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unpinned,
    TResult? Function(int count, int totalCount)? inUploadingProgress,
    TResult? Function(String name, String url)? loaded,
    TResult? Function(String description)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unpinned,
    TResult Function(int count, int totalCount)? inUploadingProgress,
    TResult Function(String name, String url)? loaded,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnpinnedFileState value) unpinned,
    required TResult Function(InUploadingProgressFileState value)
        inUploadingProgress,
    required TResult Function(LoadedFileState value) loaded,
    required TResult Function(ErrorFileState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnpinnedFileState value)? unpinned,
    TResult? Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult? Function(LoadedFileState value)? loaded,
    TResult? Function(ErrorFileState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnpinnedFileState value)? unpinned,
    TResult Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult Function(LoadedFileState value)? loaded,
    TResult Function(ErrorFileState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinnedFileStateCopyWith<$Res> {
  factory $PinnedFileStateCopyWith(
          PinnedFileState value, $Res Function(PinnedFileState) then) =
      _$PinnedFileStateCopyWithImpl<$Res, PinnedFileState>;
}

/// @nodoc
class _$PinnedFileStateCopyWithImpl<$Res, $Val extends PinnedFileState>
    implements $PinnedFileStateCopyWith<$Res> {
  _$PinnedFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnpinnedFileStateCopyWith<$Res> {
  factory _$$UnpinnedFileStateCopyWith(
          _$UnpinnedFileState value, $Res Function(_$UnpinnedFileState) then) =
      __$$UnpinnedFileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnpinnedFileStateCopyWithImpl<$Res>
    extends _$PinnedFileStateCopyWithImpl<$Res, _$UnpinnedFileState>
    implements _$$UnpinnedFileStateCopyWith<$Res> {
  __$$UnpinnedFileStateCopyWithImpl(
      _$UnpinnedFileState _value, $Res Function(_$UnpinnedFileState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnpinnedFileState implements UnpinnedFileState {
  const _$UnpinnedFileState({final String? $type})
      : $type = $type ?? 'unpinned';

  factory _$UnpinnedFileState.fromJson(Map<String, dynamic> json) =>
      _$$UnpinnedFileStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PinnedFileState.unpinned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnpinnedFileState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unpinned,
    required TResult Function(int count, int totalCount) inUploadingProgress,
    required TResult Function(String name, String url) loaded,
    required TResult Function(String description) error,
  }) {
    return unpinned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unpinned,
    TResult? Function(int count, int totalCount)? inUploadingProgress,
    TResult? Function(String name, String url)? loaded,
    TResult? Function(String description)? error,
  }) {
    return unpinned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unpinned,
    TResult Function(int count, int totalCount)? inUploadingProgress,
    TResult Function(String name, String url)? loaded,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) {
    if (unpinned != null) {
      return unpinned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnpinnedFileState value) unpinned,
    required TResult Function(InUploadingProgressFileState value)
        inUploadingProgress,
    required TResult Function(LoadedFileState value) loaded,
    required TResult Function(ErrorFileState value) error,
  }) {
    return unpinned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnpinnedFileState value)? unpinned,
    TResult? Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult? Function(LoadedFileState value)? loaded,
    TResult? Function(ErrorFileState value)? error,
  }) {
    return unpinned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnpinnedFileState value)? unpinned,
    TResult Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult Function(LoadedFileState value)? loaded,
    TResult Function(ErrorFileState value)? error,
    required TResult orElse(),
  }) {
    if (unpinned != null) {
      return unpinned(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnpinnedFileStateToJson(
      this,
    );
  }
}

abstract class UnpinnedFileState implements PinnedFileState {
  const factory UnpinnedFileState() = _$UnpinnedFileState;

  factory UnpinnedFileState.fromJson(Map<String, dynamic> json) =
      _$UnpinnedFileState.fromJson;
}

/// @nodoc
abstract class _$$InUploadingProgressFileStateCopyWith<$Res> {
  factory _$$InUploadingProgressFileStateCopyWith(
          _$InUploadingProgressFileState value,
          $Res Function(_$InUploadingProgressFileState) then) =
      __$$InUploadingProgressFileStateCopyWithImpl<$Res>;
  @useResult
  $Res call({int count, int totalCount});
}

/// @nodoc
class __$$InUploadingProgressFileStateCopyWithImpl<$Res>
    extends _$PinnedFileStateCopyWithImpl<$Res, _$InUploadingProgressFileState>
    implements _$$InUploadingProgressFileStateCopyWith<$Res> {
  __$$InUploadingProgressFileStateCopyWithImpl(
      _$InUploadingProgressFileState _value,
      $Res Function(_$InUploadingProgressFileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalCount = null,
  }) {
    return _then(_$InUploadingProgressFileState(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InUploadingProgressFileState implements InUploadingProgressFileState {
  const _$InUploadingProgressFileState(
      {required this.count, required this.totalCount, final String? $type})
      : $type = $type ?? 'inUploadingProgress';

  factory _$InUploadingProgressFileState.fromJson(Map<String, dynamic> json) =>
      _$$InUploadingProgressFileStateFromJson(json);

  @override
  final int count;
  @override
  final int totalCount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PinnedFileState.inUploadingProgress(count: $count, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InUploadingProgressFileState &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InUploadingProgressFileStateCopyWith<_$InUploadingProgressFileState>
      get copyWith => __$$InUploadingProgressFileStateCopyWithImpl<
          _$InUploadingProgressFileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unpinned,
    required TResult Function(int count, int totalCount) inUploadingProgress,
    required TResult Function(String name, String url) loaded,
    required TResult Function(String description) error,
  }) {
    return inUploadingProgress(count, totalCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unpinned,
    TResult? Function(int count, int totalCount)? inUploadingProgress,
    TResult? Function(String name, String url)? loaded,
    TResult? Function(String description)? error,
  }) {
    return inUploadingProgress?.call(count, totalCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unpinned,
    TResult Function(int count, int totalCount)? inUploadingProgress,
    TResult Function(String name, String url)? loaded,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) {
    if (inUploadingProgress != null) {
      return inUploadingProgress(count, totalCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnpinnedFileState value) unpinned,
    required TResult Function(InUploadingProgressFileState value)
        inUploadingProgress,
    required TResult Function(LoadedFileState value) loaded,
    required TResult Function(ErrorFileState value) error,
  }) {
    return inUploadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnpinnedFileState value)? unpinned,
    TResult? Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult? Function(LoadedFileState value)? loaded,
    TResult? Function(ErrorFileState value)? error,
  }) {
    return inUploadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnpinnedFileState value)? unpinned,
    TResult Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult Function(LoadedFileState value)? loaded,
    TResult Function(ErrorFileState value)? error,
    required TResult orElse(),
  }) {
    if (inUploadingProgress != null) {
      return inUploadingProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InUploadingProgressFileStateToJson(
      this,
    );
  }
}

abstract class InUploadingProgressFileState implements PinnedFileState {
  const factory InUploadingProgressFileState(
      {required final int count,
      required final int totalCount}) = _$InUploadingProgressFileState;

  factory InUploadingProgressFileState.fromJson(Map<String, dynamic> json) =
      _$InUploadingProgressFileState.fromJson;

  int get count;
  int get totalCount;
  @JsonKey(ignore: true)
  _$$InUploadingProgressFileStateCopyWith<_$InUploadingProgressFileState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedFileStateCopyWith<$Res> {
  factory _$$LoadedFileStateCopyWith(
          _$LoadedFileState value, $Res Function(_$LoadedFileState) then) =
      __$$LoadedFileStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$LoadedFileStateCopyWithImpl<$Res>
    extends _$PinnedFileStateCopyWithImpl<$Res, _$LoadedFileState>
    implements _$$LoadedFileStateCopyWith<$Res> {
  __$$LoadedFileStateCopyWithImpl(
      _$LoadedFileState _value, $Res Function(_$LoadedFileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$LoadedFileState(
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
class _$LoadedFileState implements LoadedFileState {
  const _$LoadedFileState(
      {required this.name, required this.url, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$LoadedFileState.fromJson(Map<String, dynamic> json) =>
      _$$LoadedFileStateFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PinnedFileState.loaded(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedFileState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedFileStateCopyWith<_$LoadedFileState> get copyWith =>
      __$$LoadedFileStateCopyWithImpl<_$LoadedFileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unpinned,
    required TResult Function(int count, int totalCount) inUploadingProgress,
    required TResult Function(String name, String url) loaded,
    required TResult Function(String description) error,
  }) {
    return loaded(name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unpinned,
    TResult? Function(int count, int totalCount)? inUploadingProgress,
    TResult? Function(String name, String url)? loaded,
    TResult? Function(String description)? error,
  }) {
    return loaded?.call(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unpinned,
    TResult Function(int count, int totalCount)? inUploadingProgress,
    TResult Function(String name, String url)? loaded,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnpinnedFileState value) unpinned,
    required TResult Function(InUploadingProgressFileState value)
        inUploadingProgress,
    required TResult Function(LoadedFileState value) loaded,
    required TResult Function(ErrorFileState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnpinnedFileState value)? unpinned,
    TResult? Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult? Function(LoadedFileState value)? loaded,
    TResult? Function(ErrorFileState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnpinnedFileState value)? unpinned,
    TResult Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult Function(LoadedFileState value)? loaded,
    TResult Function(ErrorFileState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedFileStateToJson(
      this,
    );
  }
}

abstract class LoadedFileState implements PinnedFileState {
  const factory LoadedFileState(
      {required final String name,
      required final String url}) = _$LoadedFileState;

  factory LoadedFileState.fromJson(Map<String, dynamic> json) =
      _$LoadedFileState.fromJson;

  String get name;
  String get url;
  @JsonKey(ignore: true)
  _$$LoadedFileStateCopyWith<_$LoadedFileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorFileStateCopyWith<$Res> {
  factory _$$ErrorFileStateCopyWith(
          _$ErrorFileState value, $Res Function(_$ErrorFileState) then) =
      __$$ErrorFileStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$ErrorFileStateCopyWithImpl<$Res>
    extends _$PinnedFileStateCopyWithImpl<$Res, _$ErrorFileState>
    implements _$$ErrorFileStateCopyWith<$Res> {
  __$$ErrorFileStateCopyWithImpl(
      _$ErrorFileState _value, $Res Function(_$ErrorFileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$ErrorFileState(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorFileState implements ErrorFileState {
  const _$ErrorFileState(this.description, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorFileState.fromJson(Map<String, dynamic> json) =>
      _$$ErrorFileStateFromJson(json);

  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PinnedFileState.error(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorFileState &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorFileStateCopyWith<_$ErrorFileState> get copyWith =>
      __$$ErrorFileStateCopyWithImpl<_$ErrorFileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unpinned,
    required TResult Function(int count, int totalCount) inUploadingProgress,
    required TResult Function(String name, String url) loaded,
    required TResult Function(String description) error,
  }) {
    return error(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unpinned,
    TResult? Function(int count, int totalCount)? inUploadingProgress,
    TResult? Function(String name, String url)? loaded,
    TResult? Function(String description)? error,
  }) {
    return error?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unpinned,
    TResult Function(int count, int totalCount)? inUploadingProgress,
    TResult Function(String name, String url)? loaded,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnpinnedFileState value) unpinned,
    required TResult Function(InUploadingProgressFileState value)
        inUploadingProgress,
    required TResult Function(LoadedFileState value) loaded,
    required TResult Function(ErrorFileState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnpinnedFileState value)? unpinned,
    TResult? Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult? Function(LoadedFileState value)? loaded,
    TResult? Function(ErrorFileState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnpinnedFileState value)? unpinned,
    TResult Function(InUploadingProgressFileState value)? inUploadingProgress,
    TResult Function(LoadedFileState value)? loaded,
    TResult Function(ErrorFileState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorFileStateToJson(
      this,
    );
  }
}

abstract class ErrorFileState implements PinnedFileState {
  const factory ErrorFileState(final String description) = _$ErrorFileState;

  factory ErrorFileState.fromJson(Map<String, dynamic> json) =
      _$ErrorFileState.fromJson;

  String get description;
  @JsonKey(ignore: true)
  _$$ErrorFileStateCopyWith<_$ErrorFileState> get copyWith =>
      throw _privateConstructorUsedError;
}

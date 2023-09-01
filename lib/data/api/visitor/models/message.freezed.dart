// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'text':
      return _StringMessage.fromJson(json);
    case 'file':
      return _FileMessage.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Message', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Message {
  String get id => throw _privateConstructorUsedError;
  String? get correlationId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  Creator get creator => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)
        text,
    required TResult Function(String id, String? correlationId,
            String createdAt, Creator creator, String name, String url)
        file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)?
        text,
    TResult? Function(String id, String? correlationId, String createdAt,
            Creator creator, String name, String url)?
        file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)?
        text,
    TResult Function(String id, String? correlationId, String createdAt,
            Creator creator, String name, String url)?
        file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringMessage value) text,
    required TResult Function(_FileMessage value) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StringMessage value)? text,
    TResult? Function(_FileMessage value)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StringMessage value)? text,
    TResult Function(_FileMessage value)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String id, String? correlationId, String createdAt, Creator creator});

  $CreatorCopyWith<$Res> get creator;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? correlationId = freezed,
    Object? createdAt = null,
    Object? creator = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Creator,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorCopyWith<$Res> get creator {
    return $CreatorCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StringMessageCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$_StringMessageCopyWith(
          _$_StringMessage value, $Res Function(_$_StringMessage) then) =
      __$$_StringMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? correlationId,
      String createdAt,
      String content,
      Creator creator,
      Keyboard? keyboard,
      List<Attribute>? attributes});

  @override
  $CreatorCopyWith<$Res> get creator;
  $KeyboardCopyWith<$Res>? get keyboard;
}

/// @nodoc
class __$$_StringMessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_StringMessage>
    implements _$$_StringMessageCopyWith<$Res> {
  __$$_StringMessageCopyWithImpl(
      _$_StringMessage _value, $Res Function(_$_StringMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? correlationId = freezed,
    Object? createdAt = null,
    Object? content = null,
    Object? creator = null,
    Object? keyboard = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$_StringMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Creator,
      keyboard: freezed == keyboard
          ? _value.keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as Keyboard?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KeyboardCopyWith<$Res>? get keyboard {
    if (_value.keyboard == null) {
      return null;
    }

    return $KeyboardCopyWith<$Res>(_value.keyboard!, (value) {
      return _then(_value.copyWith(keyboard: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_StringMessage implements _StringMessage {
  const _$_StringMessage(
      {required this.id,
      required this.correlationId,
      required this.createdAt,
      required this.content,
      required this.creator,
      required this.keyboard,
      final List<Attribute>? attributes,
      final String? $type})
      : _attributes = attributes,
        $type = $type ?? 'text';

  factory _$_StringMessage.fromJson(Map<String, dynamic> json) =>
      _$$_StringMessageFromJson(json);

  @override
  final String id;
  @override
  final String? correlationId;
  @override
  final String createdAt;
  @override
  final String content;
  @override
  final Creator creator;
  @override
  final Keyboard? keyboard;
  final List<Attribute>? _attributes;
  @override
  List<Attribute>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.text(id: $id, correlationId: $correlationId, createdAt: $createdAt, content: $content, creator: $creator, keyboard: $keyboard, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.correlationId, correlationId) ||
                other.correlationId == correlationId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.keyboard, keyboard) ||
                other.keyboard == keyboard) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      correlationId,
      createdAt,
      content,
      creator,
      keyboard,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StringMessageCopyWith<_$_StringMessage> get copyWith =>
      __$$_StringMessageCopyWithImpl<_$_StringMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)
        text,
    required TResult Function(String id, String? correlationId,
            String createdAt, Creator creator, String name, String url)
        file,
  }) {
    return text(
        id, correlationId, createdAt, content, creator, keyboard, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)?
        text,
    TResult? Function(String id, String? correlationId, String createdAt,
            Creator creator, String name, String url)?
        file,
  }) {
    return text?.call(
        id, correlationId, createdAt, content, creator, keyboard, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)?
        text,
    TResult Function(String id, String? correlationId, String createdAt,
            Creator creator, String name, String url)?
        file,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(
          id, correlationId, createdAt, content, creator, keyboard, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringMessage value) text,
    required TResult Function(_FileMessage value) file,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StringMessage value)? text,
    TResult? Function(_FileMessage value)? file,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StringMessage value)? text,
    TResult Function(_FileMessage value)? file,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StringMessageToJson(
      this,
    );
  }
}

abstract class _StringMessage implements Message {
  const factory _StringMessage(
      {required final String id,
      required final String? correlationId,
      required final String createdAt,
      required final String content,
      required final Creator creator,
      required final Keyboard? keyboard,
      final List<Attribute>? attributes}) = _$_StringMessage;

  factory _StringMessage.fromJson(Map<String, dynamic> json) =
      _$_StringMessage.fromJson;

  @override
  String get id;
  @override
  String? get correlationId;
  @override
  String get createdAt;
  String get content;
  @override
  Creator get creator;
  Keyboard? get keyboard;
  List<Attribute>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_StringMessageCopyWith<_$_StringMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FileMessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_FileMessageCopyWith(
          _$_FileMessage value, $Res Function(_$_FileMessage) then) =
      __$$_FileMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? correlationId,
      String createdAt,
      Creator creator,
      String name,
      String url});

  @override
  $CreatorCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_FileMessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_FileMessage>
    implements _$$_FileMessageCopyWith<$Res> {
  __$$_FileMessageCopyWithImpl(
      _$_FileMessage _value, $Res Function(_$_FileMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? correlationId = freezed,
    Object? createdAt = null,
    Object? creator = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_FileMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Creator,
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
class _$_FileMessage implements _FileMessage {
  const _$_FileMessage(
      {required this.id,
      required this.correlationId,
      required this.createdAt,
      required this.creator,
      required this.name,
      required this.url,
      final String? $type})
      : $type = $type ?? 'file';

  factory _$_FileMessage.fromJson(Map<String, dynamic> json) =>
      _$$_FileMessageFromJson(json);

  @override
  final String id;
  @override
  final String? correlationId;
  @override
  final String createdAt;
  @override
  final Creator creator;
  @override
  final String name;
  @override
  final String url;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.file(id: $id, correlationId: $correlationId, createdAt: $createdAt, creator: $creator, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.correlationId, correlationId) ||
                other.correlationId == correlationId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, correlationId, createdAt, creator, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileMessageCopyWith<_$_FileMessage> get copyWith =>
      __$$_FileMessageCopyWithImpl<_$_FileMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)
        text,
    required TResult Function(String id, String? correlationId,
            String createdAt, Creator creator, String name, String url)
        file,
  }) {
    return file(id, correlationId, createdAt, creator, name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)?
        text,
    TResult? Function(String id, String? correlationId, String createdAt,
            Creator creator, String name, String url)?
        file,
  }) {
    return file?.call(id, correlationId, createdAt, creator, name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? correlationId,
            String createdAt,
            String content,
            Creator creator,
            Keyboard? keyboard,
            List<Attribute>? attributes)?
        text,
    TResult Function(String id, String? correlationId, String createdAt,
            Creator creator, String name, String url)?
        file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(id, correlationId, createdAt, creator, name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringMessage value) text,
    required TResult Function(_FileMessage value) file,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StringMessage value)? text,
    TResult? Function(_FileMessage value)? file,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StringMessage value)? text,
    TResult Function(_FileMessage value)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileMessageToJson(
      this,
    );
  }
}

abstract class _FileMessage implements Message {
  const factory _FileMessage(
      {required final String id,
      required final String? correlationId,
      required final String createdAt,
      required final Creator creator,
      required final String name,
      required final String url}) = _$_FileMessage;

  factory _FileMessage.fromJson(Map<String, dynamic> json) =
      _$_FileMessage.fromJson;

  @override
  String get id;
  @override
  String? get correlationId;
  @override
  String get createdAt;
  @override
  Creator get creator;
  String get name;
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_FileMessageCopyWith<_$_FileMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

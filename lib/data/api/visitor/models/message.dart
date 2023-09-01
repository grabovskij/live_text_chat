import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:livetext_chat/data/api/visitor/models/creator.dart';
import 'package:livetext_chat/data/api/visitor/models/keyboard.dart';

import 'attribute.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@Freezed(unionKey: 'type')
class Message with _$Message {
  const factory Message.text({
    required String id,
    required String? correlationId,
    required String createdAt,
    required String content,
    required Creator creator,
    required Keyboard? keyboard,
    List<Attribute>? attributes,
  }) = _StringMessage;

  const factory Message.file({
    required String id,
    required String? correlationId,
    required String createdAt,
    required Creator creator,
    required String name,
    required String url,
  }) = _FileMessage;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

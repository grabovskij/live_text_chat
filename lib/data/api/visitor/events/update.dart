import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:livetext_chat/data/api/visitor/models/message.dart';

part 'update.freezed.dart';

part 'update.g.dart';

@freezed
class UpdateEvent with _$UpdateEvent {
  const factory UpdateEvent({
    required String createdAt,
    required List<Message> messages,
    String? correlationId,
  }) = _UpdateEvent;

  factory UpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$UpdateEventFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    required String correlationId,
    SentMessage? sentMessage,
    @Default(<String>[]) List<String> errors,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class SentMessage with _$SentMessage {
  const factory SentMessage({
    required String createdAt,
    required String id,
  }) = _SentMessage;

  factory SentMessage.fromJson(Map<String, dynamic> json) =>
      _$SentMessageFromJson(json);
}

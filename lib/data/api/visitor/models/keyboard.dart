import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'button.dart';

part 'keyboard.freezed.dart';

part 'keyboard.g.dart';

@freezed
class Keyboard with _$Keyboard {
  const factory Keyboard({
    required List<Button> buttons,
    required bool pressed,
  }) = _Keyboard;

  factory Keyboard.fromJson(Map<String, dynamic> json) =>
      _$KeyboardFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Keyboard _$$_KeyboardFromJson(Map<String, dynamic> json) => _$_Keyboard(
      buttons: (json['buttons'] as List<dynamic>)
          .map((e) => Button.fromJson(e as Map<String, dynamic>))
          .toList(),
      pressed: json['pressed'] as bool,
    );

Map<String, dynamic> _$$_KeyboardToJson(_$_Keyboard instance) =>
    <String, dynamic>{
      'buttons': instance.buttons,
      'pressed': instance.pressed,
    };

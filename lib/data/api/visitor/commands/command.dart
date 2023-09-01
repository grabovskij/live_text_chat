import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

abstract class Command {
  void execute(WebSocketSink sink) {
    sink.add(jsonEncode(toJson()));
  }

  Map<String, dynamic> toJson();
}

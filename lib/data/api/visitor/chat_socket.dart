import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:livetext_chat/data/api/visitor/events/department_request.dart';
import 'package:livetext_chat/data/api/visitor/events/result.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';
import 'package:rxdart/rxdart.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'events/dialog_state.dart';
import 'events/events.dart';
import 'events/update.dart';
import 'models/auth_result.dart';

class ChatSocket {
  final VisitorApi visitorApi;
  final ReplaySubject<Event> _eventsSubject = ReplaySubject<Event>();
  final ReplaySubject<Event> _systemEventsSubject = ReplaySubject<Event>();
  late WebSocketChannel channel;

  ChatSocket(this.visitorApi);

  WebSocketSink get sink => channel.sink;

  Stream<Event> get eventStream => _eventsSubject.stream;

  Stream<Event> get systemEventStream => _systemEventsSubject.stream;

  Future<void> openChannel(AuthResult authResult) async {
    channel = WebSocketChannel.connect(
      Uri.parse(authResult.endpoints.ws),
    );
    channel.stream.listen((e) {
      final event = mapEvents(e);

      event.maybeMap(
        attributesRequest: (_) => _systemEventsSubject.add(event),
        orElse: () => _eventsSubject.add(event),
      );
    });
  }

  Future<void> closeChannel() async {
    await channel.sink.close();
  }

  Event mapEvents(event) {
    log('Input event: $event');

    final eventJson = jsonDecode(event);

    switch (eventJson['type']) {
      case 'employeeTyping':
        return const Event.employeeTyping();
      case 'attributesRequest':
        return const Event.attributesRequest();
      case 'departmentRequest':
        return Event.departmentsRequest(DepartmentRequest.fromJson(eventJson));
      case 'update':
        return Event.update(UpdateEvent.fromJson(eventJson));
      case 'state':
        return Event.state(DialogStateEvent.fromJson(eventJson));
      case 'result':
        return Event.result(Result.fromJson(eventJson));
      default:
        return const Event.notImplemented();
    }
  }
}

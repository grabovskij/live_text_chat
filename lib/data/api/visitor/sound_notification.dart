import 'dart:async';

abstract class ISoundNotification {
  FutureOr<void> onMessageEvent();

  FutureOr<void> onBotMessageEvent();

  FutureOr<void> onSystemEvent();

  FutureOr<void> onVisitorMessageSend();
}

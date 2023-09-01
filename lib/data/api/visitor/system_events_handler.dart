import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

import 'commands/send_attributes.dart';
import 'events/events.dart';
import 'events/update.dart';

class SystemEventsHandler {
  final VisitorApi visitorApi;

  SystemEventsHandler(this.visitorApi);

  void init() {
    visitorApi.chatSocket.systemEventStream.listen(listenSystemEvents);
  }

  void listenSystemEvents(Event event) {
    event.mapOrNull(
        attributesRequest: (_) => _sendAttributes(),
        update: (event) async {
          if (event.update.messages.isNotEmpty) {
            await _notifySound(event.update);
          }
        });
  }

  void _sendAttributes() {
    final user = visitorApi.config.user;
    SendAttributes(
      correlationId: visitorApi.config.correlationId,
      name: user.name,
      phone: user.phone,
      email: user.email,
      isVipClient: user.isVip,
      crmId: visitorApi.config.crmId,
    ).execute(visitorApi.chatSocket.sink);
  }

  Future<void> _notifySound(UpdateEvent update) async {
    await update.messages.first.creator.map(
      visitor: (_) async =>
          visitorApi.soundNotification?.onVisitorMessageSend(),
      system: (_) async => visitorApi.soundNotification?.onSystemEvent(),
      employee: (_) async => visitorApi.soundNotification?.onMessageEvent(),
      bot: (_) async => visitorApi.soundNotification?.onBotMessageEvent(),
    );
  }
}

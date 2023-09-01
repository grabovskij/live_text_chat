import 'dart:async';

import 'package:livetext_chat/data/api/visitor/commands/load_file.dart';
import 'package:livetext_chat/data/api/visitor/commands/request_history.dart';
import 'package:livetext_chat/data/api/visitor/commands/send_message.dart';
import 'package:livetext_chat/data/api/visitor/chat_socket.dart';

import 'authenticator.dart';
import 'commands/choose_depatrment.dart';
import 'commands/send_file.dart';
import 'commands/press_button.dart';
import 'config.dart';
import 'events/events.dart';
import 'file_loader.dart';
import 'models/button.dart';
import 'models/pinned_file_state.dart';
import 'sound_notification.dart';
import 'system_events_handler.dart';
import 'web_api.dart';

class VisitorApi {
  final VisitorApiConfig config;
  final ISoundNotification? soundNotification;

  late Authenticator authenticator;
  late WebApi webApi;
  late ChatSocket chatSocket;
  late FileLoader fileLoader;
  late SystemEventsHandler systemEventsHandler;

  bool _isInit = false;

  bool get isInit => _isInit;

  Stream<PinnedFileState> get pinnedFileState => fileLoader.fileStatus;

  Stream<Event> get events => chatSocket.eventStream;


  VisitorApi.fromConfig({
    required this.config,
    this.soundNotification,
  }) {
    webApi = WebApi(config: config);
    fileLoader = FileLoader(webApi);
    systemEventsHandler = SystemEventsHandler(this);
    authenticator = Authenticator(webApi, config);
  }

  Future<void> init() async {
    await authenticator.auth(config).then((logged) async {
      if (logged) {
        await _openChatSocketConnection();
        systemEventsHandler.init();
        _isInit = true;
      }
    });

    if (!isInit) throw Exception('Failed login, check touchPoint');
  }

  void requestHistory({
    required String messageId,
    required int offset,
  }) {
    RequestHistory(
      correlationId: config.correlationId,
      messageId: messageId,
      offset: offset,
    ).execute(chatSocket.sink);
  }

  void chooseDepartment(int departmentId) {
    ChooseDepartment(
      correlationId: config.correlationId,
      id: departmentId,
    ).execute(chatSocket.sink);
  }

  void pressButton(Button tapButton) {
    PressButton(
      correlationId: config.correlationId,
      payload: tapButton.payload,
    ).execute(chatSocket.sink);
  }

  void sendMessage(String message) async {
    SendMessage(
      correlationId: config.correlationId,
      content: message,
    ).execute(chatSocket.sink);
  }

  Future<void> loadFile({
    required String path,
  }) async {
    final command = LoadFile(
      path: path,
      token: authenticator.authResult.visitorToken,
      loadUrl: authenticator.authResult.endpoints.upload,
    );

    await command.execute(this);
  }

  void removeLoadedFile() {
    fileLoader.updateFileStatus(const PinnedFileState.unpinned());
  }

  Future<void> sendFile(LoadedFileState loadResult) async {
    SendFile(
      correlationId: config.correlationId,
      name: loadResult.name,
      url: loadResult.url,
    ).execute(chatSocket.sink);
    fileLoader.updateFileStatus(const PinnedFileState.unpinned());
  }

  Future<void> _openChatSocketConnection() async {
    chatSocket = ChatSocket(this);
    await chatSocket.openChannel(authenticator.authResult);
  }
}

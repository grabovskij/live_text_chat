import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livetext_chat/features/chat/pages/chat_page.dart';
import 'package:livetext_chat/pages/home_page.dart';
import 'package:livetext_chat/features/chat/pages/image_preview_page.dart';

class AppRouter {
  static const root = '/';
  static const home = '/home';
  static const chat = '/chat';
  static const imagePreview = '/imagePreview';

  static GoRouter get router => _router;

  static final _router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        name: home,
        path: home,
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
        name: chat,
        path: chat,
        builder: (context, state) => const ChatPage(),
      ),
      GoRoute(
        name: imagePreview,
        path: imagePreview,
        builder: (context, state) {
          final imageUrl = state.queryParameters['imageUrl'];
          return imageUrl == null
              ? const Center(child: Text('Забыл передать imageUrl'))
              : ImagePreviewPage(
                  imageUrl: imageUrl,
                );
        },
      ),
    ],
  );
}

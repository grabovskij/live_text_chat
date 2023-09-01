import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livetext_chat/navigation/app_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final String title = 'Flutter Demo Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tap on button',
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRouter.chat);
              },
              child: const Text('Go chat'),
            ),
          ],
        ),
      ),
    );
  }
}

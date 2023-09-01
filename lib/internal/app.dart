import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';
import 'package:livetext_chat/navigation/app_router.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  final VisitorApi visitorApi;

  const MyApp({
    required this.visitorApi,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<VisitorApi>.value(
      value: visitorApi,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
      ),
    );
  }
}

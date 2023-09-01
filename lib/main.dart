import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/enums/device_type.dart';
import 'package:livetext_chat/data/api/visitor/models/user.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

import 'data/api/visitor/config.dart';
import 'features/notification/sound_notification.dart';
import 'internal/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SoundNotification.init();
  final visitorApi = VisitorApi.fromConfig(
    config: VisitorApiConfig(
      dio: Dio(),
      customVisitorToken: 'asdjkn askdla sd sad',
      touchPoint: '293875:0d108236-12e7-4b4d-8355-95e86b6c2a09',
      correlationId: 'b0d0e2b6-42ac-11ea-b77f-2e728ce88122',
      deviceType: Platform.isAndroid ? DeviceType.android : DeviceType.ios,
      user: const User(
        name: 'Леонид',
        isVip: true,
      ),
    ),
  );

  await visitorApi.init();

  runApp(MyApp(
    visitorApi: visitorApi,
  ));
}

import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class SoundNotification {
  static late final Soundpool _soundPool;
  static late int _notificationSoundID;

  static Future<void> init() async {
    _soundPool = Soundpool.fromOptions(
      options: const SoundpoolOptions(
        streamType: StreamType.notification,
      ),
    );

    _notificationSoundID = await rootBundle
        .load('assets/audio/notification_simple.caf')
        .then((value) => _soundPool.load(value));
  }

  static void notify() {
    _soundPool.play(_notificationSoundID);
  }
}

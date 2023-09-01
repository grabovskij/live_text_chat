import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'config.dart';
import 'models/auth_result.dart';
import 'web_api.dart';

class Authenticator {
  static const String _tokenKey = '_visitorApiTokenKey';

  static AndroidOptions get _androidOptions =>
      const AndroidOptions(encryptedSharedPreferences: true);

  static IOSOptions get _iosOptions => const IOSOptions();

  late AuthResult authResult;
  final WebApi api;
  final VisitorApiConfig config;
  final secureStorage = FlutterSecureStorage(
    aOptions: _androidOptions,
    iOptions: _iosOptions,
  );

  Authenticator(this.api, this.config);

  Future<bool> auth(VisitorApiConfig config) async {
    if (config.needDeleteVisitorToken) {
      await secureStorage.delete(key: _tokenKey);
    }

    if (config.customVisitorToken != null) {
      return authWithCustomToken(config.customVisitorToken!);
    }

    final visitorToken = await secureStorage.read(key: _tokenKey);

    if (visitorToken == null) {
      return newAuth();
    } else {
      return authWithVisitorToken(visitorToken);
    }
  }

  Future<bool> newAuth() async {
    try {
      authResult = await api.auth();

      await saveVisitorToken();

      return true;
    } on DioException catch (_) {
      return false;
    }
  }

  Future<bool> authWithVisitorToken(String visitorToken) async {
    try {
      authResult = await api.auth(visitorToken: visitorToken);
      await saveVisitorToken();

      return true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> authWithCustomToken(String customToken) async {
    try {
      authResult = await api.auth(customToken: customToken);

      return true;
    } catch (_) {
      return false;
    }
  }

  Future<void> saveVisitorToken() async {
    if (config.needSaveVisitorToken) {
      await secureStorage.write(key: _tokenKey, value: authResult.visitorToken);
    }
  }
}

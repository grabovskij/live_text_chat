import 'package:dio/dio.dart';
import 'package:livetext_chat/data/api/visitor/enums/device_type.dart';

import 'models/user.dart';

class VisitorApiConfig {
  /// Глобальный экземпляр dio, например с
  /// прикрепленным логгером, можно не задавать.
  final Dio? dio;

  /// Идентификатор определяющий приложение как точку контакта.
  final String touchPoint;

  /// Идентификатор связки запроса и ответа
  final String correlationId;

  /// Возможные значения: ios, android
  final DeviceType deviceType;

  /// Информация о пользователе, входящем в чат
  final User user;

  /// Идентификатор клиента во внешней системе. Например, в CRM заказчика.
  String? customVisitorToken;

  /// Идентификатор устройства выдаваемый FCM или APNS
  String? deviceToken;

  /// Идентификатор CRM
  String? crmId;

  /// Сохранять токен в secure storage / keychain
  /// для продолжения сессии после перезапуска приложения
  final bool needSaveVisitorToken;

  /// Очистить secure storage / keychain перед авторизацией
  final bool needDeleteVisitorToken;

  VisitorApiConfig({
    required this.dio,
    required this.touchPoint,
    required this.correlationId,
    required this.deviceType,
    required this.user,
    this.needSaveVisitorToken = true,
    this.needDeleteVisitorToken = false,
    this.customVisitorToken,
    this.deviceToken,
    this.crmId,
  });
}

import 'package:livetext_chat/data/api/visitor/commands/command.dart';

/// Данную команду необходимо отправить в ответ на команду от сервера [attributesRequest].
/// В полях можно передать необходимую оператору информацию о посетителе.
/// Переданная информация будет отображаться в Приложении оператора и в Личном кабинете.
///
/// Атрибуты можно обновить в любой момент общения, при условии что обращение находится в работе (не закрыто оператором)
///
/// В данной команде обязательными являются поля [correlationId], [type] и [attributes].

class SendAttributes extends Command {
  final String correlationId;
  final String? name;
  final String? phone;
  final String? email;
  final bool? isVipClient;
  final String? crmId;

  SendAttributes({
    required this.correlationId,
    this.name,
    this.phone,
    this.email,
    this.isVipClient,
    this.crmId,
  });

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {
      'type': 'attributes',
      'correlationId': correlationId,
    };

    if (name != null) map['name'] = '$name';
    if (phone != null) map['phone'] = '$phone';
    if (email != null) map['email'] = '$email';

    final Map<String, String> attributes = {};

    if (isVipClient != null) attributes['VIP-client'] = '$isVipClient';
    if (crmId != null) attributes['CRM id'] = '$crmId';
    if (attributes.keys.isNotEmpty) map['attributes'] = attributes;

    return map;
  }
}

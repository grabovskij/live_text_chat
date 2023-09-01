import 'command.dart';

class SendFile extends Command {
  final String correlationId;
  final String name;
  final String url;

  SendFile({
    required this.correlationId,
    required this.name,
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'file',
      'correlationId': correlationId,
      'name': name,
      'url': url,
    };
  }
}

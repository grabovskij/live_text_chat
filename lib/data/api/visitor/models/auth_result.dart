import 'endpoints.dart';

class AuthResult {
  final String visitorToken;
  final Endpoints endpoints;

  AuthResult({
    required this.visitorToken,
    required this.endpoints,
  });

  factory AuthResult.fromJson(Map<String, dynamic> json) {
    return AuthResult(
      visitorToken: json['visitorToken'].toString(),
      endpoints: Endpoints.fromJson(json['endpoints']),
    );
  }
}

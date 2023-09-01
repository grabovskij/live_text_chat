class Endpoints {
  final String ws;
  final String upload;

  Endpoints({
    required this.ws,
    required this.upload,
  });

  factory Endpoints.fromJson(Map<String, dynamic> json) {
    return Endpoints(
      ws: json['ws'].toString(),
      upload: json['upload'].toString(),
    );
  }
}

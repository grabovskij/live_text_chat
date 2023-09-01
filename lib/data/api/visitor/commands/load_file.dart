import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

class LoadFile {
  final String path;
  final String token;
  final String loadUrl;

  LoadFile({
    required this.path,
    required this.token,
    required this.loadUrl,
  });

  Future<void> execute(VisitorApi visitorApi) async {
    visitorApi.fileLoader.loadFile(
      path: path,
      loadUrl: loadUrl,
      token: token,
    );
  }
}

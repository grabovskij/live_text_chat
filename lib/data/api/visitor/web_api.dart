import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:livetext_chat/data/api/visitor/config.dart';
import 'package:rxdart/rxdart.dart';

import 'models/auth_result.dart';
import 'models/file_load_result.dart';
import 'models/pinned_file_state.dart';

class WebApi {
  late final String _touchPoint;
  late final Dio _dio;
  late final BehaviorSubject<PinnedFileState> _fileStatus;

  Stream<PinnedFileState> get fileStatus => _fileStatus.stream;

  WebApi({
    required VisitorApiConfig config,
  }) {
    _dio = config.dio ?? Dio();
    _touchPoint = config.touchPoint;
    _fileStatus = BehaviorSubject<PinnedFileState>()
      ..add(const PinnedFileState.unpinned());
  }

  Future<AuthResult> auth({
    String? visitorToken,
    String? customToken,
  }) async {
    var queryParameters = {
      'touchPoint': _touchPoint,
    };

    if (visitorToken != null) {
      queryParameters['visitorToken'] = visitorToken;
    }

    if (customToken != null) {
      queryParameters['customVisitorToken'] = customToken;
    }

    final result = await _dio.get(
      'https://visitor-api.livetex.ru/v1/auth',
      queryParameters: queryParameters,
    );

    final authResult = AuthResult.fromJson(jsonDecode(result.data));

    return authResult;
  }

  void removeFile() {
    _fileStatus.add(const PinnedFileState.unpinned());
  }

  Future<void> loadFile({
    required String path,
    required String loadUrl,
    required String token,
    required void Function(int count, int total) onProgress,
    required void Function(FileLoadResult result) onSuccess,
    required void Function(String description) onError,
  }) async {
    final fileName = path.split('/').last;
    final formData = FormData.fromMap({
      'fileUpload': await MultipartFile.fromFile(
        path,
        filename: fileName,
      )
    });
    final BaseOptions options = BaseOptions(
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'multipart/form-data'
      },
    );

    final oldOption = _dio.options;
    _dio.options = options;

    final result = await _dio.post(
      loadUrl,
      data: formData,
      onSendProgress: (count, total) {
        onProgress.call(count, total);
      },
    );

    _dio.options = oldOption;

    try {
      onSuccess.call(FileLoadResult.fromJson(jsonDecode(result.data)));
    } on Exception catch (e) {
      onError.call(e.toString());
    }
  }
}

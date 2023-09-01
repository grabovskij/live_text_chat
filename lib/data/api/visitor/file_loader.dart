import 'package:rxdart/rxdart.dart';

import 'web_api.dart';
import 'models/file_load_result.dart';
import 'models/pinned_file_state.dart';

class FileLoader {
  final WebApi api;
  final BehaviorSubject<PinnedFileState> _fileStatus =
      BehaviorSubject<PinnedFileState>();

  FileLoader(this.api);

  Stream<PinnedFileState> get fileStatus => _fileStatus.stream;

  void updateFileStatus(PinnedFileState status) {
    _fileStatus.add(status);
  }

  Future<void> loadFile({
    required String path,
    required String loadUrl,
    required String token,
  }) async {
    api.loadFile(
      path: path,
      loadUrl: loadUrl,
      token: token,
      onProgress: onProgress,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  void onProgress(int count, int total) => _fileStatus.add(
      PinnedFileState.inUploadingProgress(count: count, totalCount: total));

  void onSuccess(FileLoadResult result) {
    _fileStatus.add(PinnedFileState.loaded(name: result.name, url: result.url));
  }

  void onError(String description) {
    _fileStatus.add(PinnedFileState.error(description));
  }
}

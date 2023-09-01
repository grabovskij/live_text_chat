import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_load_result.freezed.dart';

part 'file_load_result.g.dart';

@freezed
class FileLoadResult with _$FileLoadResult {
  const factory FileLoadResult({
    required String name,
    required String url,
  }) = _FileLoadResult;

  factory FileLoadResult.fromJson(Map<String, dynamic> json) =>
      _$FileLoadResultFromJson(json);
}

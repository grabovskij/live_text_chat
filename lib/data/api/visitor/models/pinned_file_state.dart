import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinned_file_state.freezed.dart';

part 'pinned_file_state.g.dart';

@freezed
class PinnedFileState with _$PinnedFileState {
  const factory PinnedFileState.unpinned() = UnpinnedFileState;

  const factory PinnedFileState.inUploadingProgress({
    required int count,
    required int totalCount,
  }) = InUploadingProgressFileState;

  const factory PinnedFileState.loaded({
    required String name,
    required String url,
  }) = LoadedFileState;

  const factory PinnedFileState.error(String description) = ErrorFileState;

  factory PinnedFileState.fromJson(Map<String, dynamic> json) =>
      _$PinnedFileStateFromJson(json);
}

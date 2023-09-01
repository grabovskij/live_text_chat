import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/models/pinned_file_state.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

Widget defaultBuilder(int count, int total) => CircularProgressIndicator(
      value: count.toDouble() / total.toDouble(),
    );

class FileLoadingIndicator extends StatelessWidget {
  const FileLoadingIndicator({
    required this.visitorApi,
    this.builder = defaultBuilder,
    super.key,
  });

  final VisitorApi visitorApi;
  final Widget Function(int count, int total) builder;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: StreamBuilder<PinnedFileState>(
        stream: visitorApi.pinnedFileState,
        builder: (context, snapshot) {
          final event = snapshot.data;

          if (event == null) return const SizedBox.shrink();

          return event.maybeMap(
            inUploadingProgress: (progress) => builder(progress.count, progress.totalCount),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

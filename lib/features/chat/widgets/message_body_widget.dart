import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/models/creator.dart';

import 'creation_time_widget.dart';

const _defaultBigRadius = Radius.circular(16);
const _defaultSmallRadius = Radius.circular(4);

class MessageBody extends StatelessWidget {
  final Radius bigRadius;
  final Radius smallRadius;
  final Widget child;
  final DateTime createdAt;
  final Creator creator;
  final bool asNextCreator;

  const MessageBody({
    required this.child,
    required this.creator,
    required this.createdAt,
    this.asNextCreator = false,
    this.smallRadius = _defaultSmallRadius,
    this.bigRadius = _defaultBigRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: getAlignment(creator),
      child: Container(
        decoration: BoxDecoration(
          color: getColor(creator),
          borderRadius: getBorderRadius(creator),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: getCrossAxisAlignment(creator),
            children: [
              getAuthor(creator),
              child,
              CreationTime(createdAt: createdAt),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAuthor(Creator creator) {
    var textStyle = const TextStyle(fontWeight: FontWeight.bold);

    return creator.map(
      employee: (employee) =>
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Text(
              employee.employee.name.isEmpty
                  ? 'Служба поддержки:'
                  : employee.employee.name,
              style: textStyle,
            ),
          ),
      visitor: (_) => const SizedBox.shrink(),
      system: (_) => Text('Система', style: textStyle),
      bot: (_) => Text('Бот:', style: textStyle),
    );
  }

  Color getColor(Creator creator) {
    return creator.maybeMap(
      // visitor: (_) => Colors.lightBlueAccent,
      system: (_) => Colors.yellow,
      orElse: () => Colors.black.withOpacity(0.1),
    );
  }

  Alignment getAlignment(Creator creator) {
    return creator.maybeMap(
      visitor: (_) => Alignment.centerLeft,
      system: (_) => Alignment.center,
      orElse: () => Alignment.centerRight,
    );
  }

  CrossAxisAlignment getCrossAxisAlignment(Creator creator) {
    return creator.maybeMap(
      visitor: (_) => CrossAxisAlignment.start,
      system: (_) => CrossAxisAlignment.center,
      orElse: () => CrossAxisAlignment.end,
    );
  }

  BorderRadius getBorderRadius(Creator creator) {
    return creator.maybeMap(
      visitor: (_) =>
          BorderRadius.only(
            topLeft: bigRadius,
            topRight: bigRadius,
            bottomLeft: asNextCreator ? bigRadius : smallRadius,
            bottomRight: bigRadius,
          ),
      system: (_) =>
          BorderRadius.only(
            topLeft: bigRadius,
            topRight: bigRadius,
            bottomLeft: bigRadius,
            bottomRight: bigRadius,
          ),
      orElse: () =>
          BorderRadius.only(
            topLeft: bigRadius,
            topRight: bigRadius,
            bottomLeft: bigRadius,
            bottomRight: asNextCreator ? bigRadius : smallRadius,
          ),
    );
  }
}

import 'package:flutter/material.dart';

class CreationTime extends StatelessWidget {
  const CreationTime({
    super.key,
    required this.createdAt,
  });

  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${createdAt.hour}:${createdAt.minute < 10 ? '0${createdAt.minute}' : createdAt.minute}',
      style: TextStyle(color: Colors.black.withOpacity(0.65)),
    );
  }
}

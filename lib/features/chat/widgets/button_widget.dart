import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/models/button.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

class ButtonWidget extends StatelessWidget {
  final VisitorApi visitorApi;
  final Button button;

  const ButtonWidget({
    required this.visitorApi,
    required this.button,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(button.label),
      onPressed: () {
        visitorApi.pressButton(button);
      },
    );
  }
}

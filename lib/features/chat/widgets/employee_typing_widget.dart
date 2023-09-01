import 'package:flutter/material.dart';
import 'package:livetext_chat/data/api/visitor/events/events.dart';
import 'package:livetext_chat/data/api/visitor/visitor_api.dart';

class EmployeeTyping extends StatefulWidget {
  final VisitorApi visitorApi;
  final Widget child;

  const EmployeeTyping({
    required this.visitorApi,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<EmployeeTyping> createState() => _EmployeeTypingState();
}

class _EmployeeTypingState extends State<EmployeeTyping>
    with TickerProviderStateMixin {
  late final AnimationController typingAnimationController;
  bool isTyping = false;

  @override
  void initState() {
    typingAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    typingAnimationController.addListener(listenTyping);
    widget.visitorApi.events.listen(listenEvents);
    super.initState();
  }

  @override
  void dispose() {
    typingAnimationController.removeListener(listenTyping);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isTyping ? widget.child : const SizedBox();
  }

  void listenEvents(Event event) {
    event.mapOrNull(employeeTyping: (_) {
      typingAnimationController.forward(from: 0);
    });
  }

  void listenTyping() {
    setState(() {
      isTyping = typingAnimationController.isAnimating;
    });
  }
}

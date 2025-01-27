import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class NotificationListener<T extends Notification> extends StatelessWidget {
  final Widget child;
  final bool Function(T) onNotification;

  const NotificationListener({
    super.key,
    required this.child,
    required this.onNotification,
  });

  @override
  Widget build(BuildContext context) {
    return material.NotificationListener<T>(
      onNotification: onNotification,
      child: child,
    );
  }
}

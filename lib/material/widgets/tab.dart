import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class Tab extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Widget? icon;
  final EdgeInsetsGeometry? iconMargin;
  final double? height;

  const Tab({
    super.key,
    this.text,
    this.icon,
    this.iconMargin,
    this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return material.Tab(
      text: text,
      icon: icon,
      iconMargin: iconMargin,
      height: height,
      child: child,
    );
  }
}

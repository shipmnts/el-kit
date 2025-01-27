import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class Padding extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;

  const Padding({
    super.key,
    required this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return material.Padding(
      padding: padding,
      child: child,
    );
  }
}

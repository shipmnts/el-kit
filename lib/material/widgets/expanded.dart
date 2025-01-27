import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class Expanded extends StatelessWidget {
  final int flex;
  final Widget child;

  const Expanded({
    super.key,
    this.flex = 1,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return material.Expanded(
      flex: flex,
      child: child,
    );
  }
}

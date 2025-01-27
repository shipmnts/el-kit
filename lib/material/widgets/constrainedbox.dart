import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class ConstrainedBox extends StatelessWidget {
  final BoxConstraints constraints;
  final Widget child;

  const ConstrainedBox({
    super.key,
    required this.constraints,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return material.ConstrainedBox(
      constraints: constraints,
      child: child,
    );
  }
}

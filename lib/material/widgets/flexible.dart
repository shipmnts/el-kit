import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class Flexible extends StatelessWidget {
  final int flex;
  final FlexFit fit;
  final Widget child;

  const Flexible({
    super.key,
    this.flex = 1,
    this.fit = FlexFit.loose,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return material.Flexible(
      flex: flex,
      fit: fit,
      child: child,
    );
  }
}

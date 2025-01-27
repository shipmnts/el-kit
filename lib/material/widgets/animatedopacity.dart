import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class AnimatedOpacity extends StatelessWidget {
  final Widget child;
  final double opacity;
  final Duration duration;
  final Curve curve;
  final VoidCallback? onEnd;
  final bool alwaysIncludeSemantics;

  const AnimatedOpacity({
    super.key,
    required this.child,
    required this.opacity,
    required this.duration,
    this.curve = Curves.linear,
    this.onEnd,
    this.alwaysIncludeSemantics = false,
  });

  @override
  Widget build(BuildContext context) {
    return material.AnimatedOpacity(
      opacity: opacity,
      duration: duration,
      curve: curve,
      onEnd: onEnd,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: child,
    );
  }
}

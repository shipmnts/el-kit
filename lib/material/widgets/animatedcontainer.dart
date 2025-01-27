import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class AnimatedContainer extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final Color? color;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? decoration;

  const AnimatedContainer({
    super.key,
    required this.child,
    required this.duration,
    this.curve = Curves.linear,
    this.color,
    this.width,
    this.height,
    this.margin,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return material.AnimatedContainer(
      duration: duration,
      curve: curve,
      color: color,
      width: width,
      height: height,
      margin: margin,
      decoration: decoration,
      child: child,
    );
  }
}

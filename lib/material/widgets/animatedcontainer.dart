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
  final Matrix4? transform;

  const AnimatedContainer(
      {super.key,
      required this.child,
      required this.duration,
      this.curve = Curves.linear,
      this.color,
      this.width,
      this.height,
      this.margin,
      this.decoration,
      this.transform});

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
      transform: transform,
      child: child,
    );
  }
}

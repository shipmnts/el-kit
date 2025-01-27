import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class Card extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final EdgeInsetsGeometry? margin;
  final Color? shadowColor;
  final bool borderOnForeground;

  const Card({
    super.key,
    this.child,
    this.color,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.margin,
    this.shadowColor,
    this.borderOnForeground = true,
  });

  @override
  Widget build(BuildContext context) {
    return material.Card(
      color: color,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      margin: margin,
      shadowColor: shadowColor,
      borderOnForeground: borderOnForeground,
      child: child,
    );
  }
}

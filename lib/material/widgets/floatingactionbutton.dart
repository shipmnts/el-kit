import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class FloatingActionButton extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final double? hoverElevation;
  final double? focusElevation;
  final double? disabledElevation;
  final ShapeBorder? shape;
  final bool mini;
  final String? tooltip;

  const FloatingActionButton({
    super.key,
    this.child,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.hoverElevation,
    this.focusElevation,
    this.disabledElevation,
    this.shape,
    this.mini = false,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return material.FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      hoverElevation: hoverElevation,
      focusElevation: focusElevation,
      disabledElevation: disabledElevation,
      shape: shape,
      mini: mini,
      tooltip: tooltip,
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class Chip extends StatelessWidget {
  final Widget? avatar;
  final Widget label;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final OutlinedBorder? shape;
  final VoidCallback? onDeleted;
  final Widget? deleteIcon;
  final Color? deleteIconColor;
  final String? tooltip;
  final VisualDensity? visualDensity;

  const Chip({
    super.key,
    required this.label,
    this.avatar,
    this.labelStyle,
    this.backgroundColor,
    this.padding,
    this.elevation,
    this.shape,
    this.onDeleted,
    this.deleteIcon,
    this.deleteIconColor,
    this.tooltip,
    this.visualDensity,
  });

  @override
  Widget build(BuildContext context) {
    return material.Chip(
      avatar: avatar,
      label: label,
      backgroundColor: backgroundColor,
      padding: padding,
      elevation: elevation ?? 0.0,
      shape: shape,
      onDeleted: onDeleted,
      deleteIcon: deleteIcon,
      deleteIconColor: deleteIconColor,
      visualDensity: visualDensity,
    );
  }
}

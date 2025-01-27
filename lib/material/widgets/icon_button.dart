import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class IconButton extends StatelessWidget {
  final Widget icon;
  final double? iconSize;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final Color? color;
  final Color? splashColor;
  final Color? highlightColor;
  final Color? hoverColor;
  final Color? focusColor;
  final Color? disabledColor;
  final String? tooltip;
  final VoidCallback? onPressed;
  final FocusNode? focusNode;
  final bool autofocus;
  final String? tooltipMessage;
  final MouseCursor? mouseCursor;
  final VisualDensity? visualDensity;
  final bool enableFeedback;
  final BoxConstraints? constraints;

  const IconButton({
    super.key,
    required this.icon,
    this.iconSize,
    this.padding = const EdgeInsets.all(8.0),
    this.alignment = Alignment.center,
    this.color,
    this.splashColor,
    this.highlightColor,
    this.hoverColor,
    this.focusColor,
    this.disabledColor,
    this.tooltip,
    this.onPressed,
    this.focusNode,
    this.autofocus = false,
    this.tooltipMessage,
    this.mouseCursor,
    this.visualDensity,
    this.enableFeedback = true,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return material.IconButton(
      icon: icon,
      iconSize: iconSize,
      padding: padding,
      alignment: alignment,
      color: color,
      splashColor: splashColor,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      focusColor: focusColor,
      disabledColor: disabledColor,
      tooltip: tooltipMessage,
      onPressed: onPressed,
      focusNode: focusNode,
      autofocus: autofocus,
      mouseCursor: mouseCursor,
      visualDensity: visualDensity,
      enableFeedback: enableFeedback,
      constraints: constraints,
    );
  }
}

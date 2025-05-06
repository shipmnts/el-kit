import 'package:flutter/material.dart';

class CircularIconLabel extends StatelessWidget {
  final String label;

  final IconData icon;

  final Color? iconColor;

  final double iconSize;

  final Color? backgroundColor;

  final double labelWidth;

  final double circleSize;

  final VoidCallback? onTap;

  final TextStyle? textStyle;

  const CircularIconLabel({
    super.key,
    required this.label,
    required this.icon,
    this.iconColor,
    this.iconSize = 24,
    this.backgroundColor,
    this.labelWidth = 70,
    this.circleSize = 50,
    this.onTap,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: circleSize,
            height: circleSize,
            decoration: BoxDecoration(
              color: backgroundColor ?? const Color(0xFFFFEEE4),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF303030).withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                icon,
                color: iconColor ?? const Color(0xFFFE6533),
                size: iconSize,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: labelWidth,
            child: Text(
              label,
              textAlign: TextAlign.center,
              softWrap: true,
              style: textStyle ?? Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}

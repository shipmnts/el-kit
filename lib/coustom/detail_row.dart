import 'package:flutter/material.dart';

class DetailRow extends StatelessWidget {
  final String label;
  final String? value;
  final bool chip;
  final Color? chipColor;
  final bool icon;
  final IconData? iconData;
  final Color? iconColor;
  final int? maxLines;

  const DetailRow({
    super.key,
    required this.label,
    this.value,
    this.chip = false,
    this.chipColor,
    this.icon = false,
    this.iconData,
    this.iconColor,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          if (chip && value != null)
            Chip(
              visualDensity: VisualDensity.compact,
              label: Text(
                value!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              backgroundColor: chipColor ?? Colors.orange[100],
              padding: const EdgeInsets.symmetric(horizontal: 8),
            )
          else if (icon && value != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconData != null)
                  Icon(
                    iconData,
                    color: iconColor ?? Colors.blue,
                    size: 16,
                  ),
                const SizedBox(width: 4),
                Text(
                  value!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            )
          else
            Flexible(
              flex: 3,
              child: Text(
                value ?? '-',
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: maxLines ?? 1,
              ),
            ),
        ],
      ),
    );
  }
}

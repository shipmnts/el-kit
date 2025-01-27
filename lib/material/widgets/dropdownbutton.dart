import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class DropdownButton<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final Widget? hint;
  final bool isExpanded;
  final double? elevation;
  final Widget? icon;
  final Color? dropdownColor;

  const DropdownButton({
    super.key,
    this.items,
    this.value,
    this.onChanged,
    this.hint,
    this.isExpanded = false,
    this.elevation,
    this.icon,
    this.dropdownColor,
  });

  @override
  Widget build(BuildContext context) {
    return material.DropdownButton<T>(
      items: items,
      value: value,
      onChanged: onChanged,
      hint: hint,
      isExpanded: isExpanded,
      elevation: elevation?.toInt() ?? 8,
      icon: icon,
      dropdownColor: dropdownColor,
    );
  }
}

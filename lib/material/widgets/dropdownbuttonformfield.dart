import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class DropdownButtonFormField<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final FormFieldSetter<T>? onSaved;
  final FormFieldValidator<T>? validator;
  final Widget? hint;
  final Widget? disabledHint;
  final InputDecoration? decoration;
  final TextStyle? style;
  final Widget? icon;
  final Color? iconDisabledColor;
  final Color? iconEnabledColor;
  final double iconSize;
  final bool isDense;
  final bool isExpanded;
  final double? itemHeight;
  final Color? dropdownColor;
  final EdgeInsetsGeometry? padding;
  final bool autofocus;
  final FocusNode? focusNode;
  final bool enableFeedback;
  final AlignmentGeometry alignment;

  const DropdownButtonFormField({
    super.key,
    this.items,
    this.value,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hint,
    this.disabledHint,
    this.decoration,
    this.style,
    this.icon,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.iconSize = 24.0,
    this.isDense = false,
    this.isExpanded = false,
    this.itemHeight,
    this.dropdownColor,
    this.padding,
    this.autofocus = false,
    this.focusNode,
    this.enableFeedback = true,
    this.alignment = AlignmentDirectional.centerStart,
  });

  @override
  Widget build(BuildContext context) {
    return material.DropdownButtonFormField<T>(
      items: items,
      value: value,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      hint: hint,
      disabledHint: disabledHint,
      decoration: decoration,
      style: style,
      icon: icon,
      iconDisabledColor: iconDisabledColor,
      iconEnabledColor: iconEnabledColor,
      iconSize: iconSize,
      isDense: isDense,
      isExpanded: isExpanded,
      itemHeight: itemHeight,
      dropdownColor: dropdownColor,
      padding: padding,
      autofocus: autofocus,
      focusNode: focusNode,
      enableFeedback: enableFeedback,
      alignment: alignment,
    );
  }
}

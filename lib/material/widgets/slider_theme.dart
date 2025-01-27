import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class SliderTheme extends StatelessWidget {
  final SliderThemeData data;
  final Widget child;

  const SliderTheme({
    super.key,
    required this.data,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return material.SliderTheme(
      data: data,
      child: child,
    );
  }
}

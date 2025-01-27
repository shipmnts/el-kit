import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class Center extends StatelessWidget {
  final double? widthFactor;
  final double? heightFactor;
  final Widget child;

  const Center({
    super.key,
    this.widthFactor,
    this.heightFactor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return material.Center(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: child,
    );
  }
}

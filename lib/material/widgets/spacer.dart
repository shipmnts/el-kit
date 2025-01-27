import 'package:flutter/material.dart';

class Spacer extends StatelessWidget {
  /// Creates a flexible space to insert into a [Flexible] widget.
  ///
  /// The [flex] parameter may not be null or less than one.
  const Spacer({super.key, this.flex = 1}) : assert(flex > 0);

  /// The flex factor to use in determining how much space to take up.
  ///
  /// The amount of space the [CustomSpacer] can occupy in the main axis is determined
  /// by dividing the free space proportionately, after placing the inflexible
  /// children, according to the flex factors of the flexible children.
  ///
  /// Defaults to one.
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: const SizedBox.shrink(),
    );
  }
}

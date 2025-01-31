import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class TabBarView extends StatelessWidget {
  final TabController? controller;
  final List<Widget> children;
  final ScrollPhysics? physics;

  const TabBarView({
    super.key,
    required this.children,
    this.controller,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return material.TabBarView(
      controller: controller,
      physics: physics ?? const BouncingScrollPhysics(),
      children: children,
    );
  }
}

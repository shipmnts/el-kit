import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class GridView extends StatelessWidget {
  final SliverGridDelegate gridDelegate;
  final List<Widget> children;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;

  const GridView({
    super.key,
    required this.gridDelegate,
    required this.children,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return material.GridView.builder(
      gridDelegate: gridDelegate,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
    );
  }
}

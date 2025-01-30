import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class GridView extends StatelessWidget {
  final SliverGridDelegate gridDelegate;
  final IndexedWidgetBuilder itemBuilder;
  final List items;
  final EdgeInsetsGeometry padding;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final bool primary;
  final Axis scrollDirection;
  final ScrollController? controller;
  final bool reverse;
  final Clip clipBehavior;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final int? semanticChildCount;
  final DragStartBehavior dragStartBehavior;
  final bool keyboardDismissBehavior;
  final String? restorationId;

  const GridView({
    super.key,
    required this.items,
    required this.gridDelegate,
    required this.itemBuilder,
    this.padding = const EdgeInsets.all(8.0),
    this.physics,
    this.shrinkWrap = false,
    this.primary = false,
    this.scrollDirection = Axis.vertical,
    this.controller,
    this.reverse = false,
    this.clipBehavior = Clip.hardEdge,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = false,
    this.restorationId,
  });

  @override
  Widget build(BuildContext context) {
    return material.GridView.builder(
      padding: padding,
      gridDelegate: gridDelegate,
      itemCount: items.length,
      itemBuilder: itemBuilder,
      physics: physics,
      shrinkWrap: shrinkWrap,
      primary: primary,
      scrollDirection: scrollDirection,
      controller: controller,
      reverse: reverse,
      clipBehavior: clipBehavior,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticChildCount: semanticChildCount,
      dragStartBehavior: dragStartBehavior,
      keyboardDismissBehavior: keyboardDismissBehavior
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId,
    );
  }
}

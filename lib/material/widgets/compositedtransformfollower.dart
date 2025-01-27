import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class CompositedTransformFollower extends StatelessWidget {
  final LayerLink link;
  final Widget child;
  final bool showWhenUnlinked;
  final Offset offset;
  final Alignment followerAnchor;
  final Alignment targetAnchor;

  const CompositedTransformFollower({
    super.key,
    required this.link,
    required this.child,
    this.showWhenUnlinked = true,
    this.offset = Offset.zero,
    this.followerAnchor = Alignment.topLeft,
    this.targetAnchor = Alignment.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return material.CompositedTransformFollower(
      link: link,
      showWhenUnlinked: showWhenUnlinked,
      offset: offset,
      followerAnchor: followerAnchor,
      targetAnchor: targetAnchor,
      child: child,
    );
  }
}

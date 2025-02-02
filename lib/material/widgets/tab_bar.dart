import 'package:flutter/material.dart';
import 'package:el_kit/el_kit.dart' as el_kit;
import 'package:flutter/material.dart' as material;

class TabBar extends StatelessWidget {
  final List<el_kit.Tab> tabs;
  final TabController? controller;
  final Color? indicatorColor;
  final double indicatorWeight;
  final EdgeInsetsGeometry? labelPadding;
  final TextStyle? labelStyle;
  final TextStyle? unselectedLabelStyle;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final bool isScrollable;
  final Decoration? indicator;
  final TabAlignment? tabAlignment;

  const TabBar(
      {super.key,
      required this.tabs,
      this.controller,
      this.indicatorColor,
      this.indicatorWeight = 2.0,
      this.labelPadding,
      this.labelStyle,
      this.unselectedLabelStyle,
      this.labelColor,
      this.unselectedLabelColor,
      this.isScrollable = false,
      this.indicator,
      this.tabAlignment = TabAlignment.start});

  @override
  Widget build(BuildContext context) {
    return material.TabBar(
      controller: controller,
      tabs: tabs,
      indicatorColor: indicatorColor ?? Theme.of(context).primaryColor,
      indicatorWeight: indicatorWeight,
      labelPadding: labelPadding,
      labelStyle: labelStyle,
      unselectedLabelStyle: unselectedLabelStyle,
      labelColor: labelColor,
      unselectedLabelColor: unselectedLabelColor,
      isScrollable: isScrollable,
      indicator: indicator,
      tabAlignment: tabAlignment,
    );
  }
}

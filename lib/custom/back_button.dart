import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  final Color? color;
  const BackButton({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      icon: Icon(
        Icons.chevron_left,
        color: color,
      ),
      onPressed: () => Navigator.maybePop(context),
    );
  }
}

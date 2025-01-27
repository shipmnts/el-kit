import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Widget content;

  const CustomCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 8.0,
              ),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            content,
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

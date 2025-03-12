import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String hintText;
  final FocusNode? focusNode;

  const SearchField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.hintText,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, child) {
        final hasText = value.text.isNotEmpty;

        return TextField(
          controller: controller,
          focusNode: focusNode,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.headlineMedium,
            prefixIcon: hasText
                ? IconButton(
                    icon: const Icon(Icons.arrow_back, size: 20),
                    onPressed: () {
                      controller.clear();
                      onChanged('');
                    },
                  )
                : const Icon(Icons.search_outlined, size: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(0xFFF6F7FA),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 2,
            ),
          ),
        );
      },
    );
  }
}

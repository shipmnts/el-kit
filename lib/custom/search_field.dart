import 'dart:async';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool animated;
  final String? hintText;
  final List<String> hints;
  final String? hintPrefix;
  final Duration rotationDuration;
  final ValueChanged<String> onChanged;
  final GestureTapCallback? onTap;

  const SearchField({
    super.key,
    required this.controller,
    this.focusNode,
    this.animated = false,
    this.hintText,
    this.hints = const [],
    this.hintPrefix,
    this.rotationDuration = const Duration(milliseconds: 1500),
    required this.onChanged,
    this.onTap,
  })  : assert(
          !(animated && (hints == const [] || hintPrefix == null)),
          'Hints and Hint Prefix cannot be empty for animated search field',
        ),
        assert(
          !(!animated && hintText == null),
          'Hint text cannot be null for static search field',
        );

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Timer? _timer;
  int _hintIndex = 0;
  late FocusNode _focusNode;
  late String _currentHintText;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();

    if (widget.animated) {
      _currentHintText = '${widget.hintPrefix} "${widget.hints[_hintIndex]}"';
      _startRotationTimer();
    } else {
      _currentHintText = widget.hintText!;
    }

    _focusNode.addListener(_onFocusChange);
  }

  void _startRotationTimer() {
    _timer = Timer.periodic(widget.rotationDuration, (timer) {
      if (mounted) {
        setState(() {
          _hintIndex = (_hintIndex + 1) % widget.hints.length;
          _currentHintText =
              '${widget.hintPrefix} "${widget.hints[_hintIndex]}"';
        });
      }
    });
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    if (widget.focusNode == null) {
      _focusNode.removeListener(_onFocusChange);
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: widget.controller,
      builder: (context, value, child) {
        final hasText = value.text.isNotEmpty;

        return TextField(
          controller: widget.controller,
          focusNode: _focusNode,
          onChanged: widget.onChanged,
          onEditingComplete: () {
            _focusNode.unfocus();
          },
          onTap: widget.onTap,
          textInputAction: TextInputAction.done,
          style: Theme.of(context).textTheme.bodyLarge,
          decoration: InputDecoration(
            hintText: _currentHintText,
            hintStyle: Theme.of(context).textTheme.labelMedium,
            prefixIcon: hasText
                ? IconButton(
                    icon: const Icon(Icons.arrow_back, size: 20),
                    onPressed: () {
                      widget.controller.clear();
                      widget.onChanged('');
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

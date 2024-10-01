import 'package:flutter/material.dart';

class HoverButtonAnimate extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const HoverButtonAnimate({
    super.key,
    required this.child,
    required this.onTap,
  });
  @override
  State<HoverButtonAnimate> createState() => _HoverButtonAnimateState();
}

class _HoverButtonAnimateState extends State<HoverButtonAnimate> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color:
              _isHovered ? Colors.white.withOpacity(0.3) : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: TextButton(
          onPressed: widget.onTap,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.hovered)) return Colors.white;
                return Colors.white70;
              },
            ),
            overlayColor: WidgetStateProperty.all(
              Colors.transparent,
            ),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

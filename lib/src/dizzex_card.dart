import 'package:flutter/material.dart';

class DizzexCard extends StatelessWidget {
  const DizzexCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(20.0),
    this.margin = const EdgeInsets.symmetric(vertical: 8.0),
    this.borderRadius = 14.0,
    this.backgroundColor = const Color(0xFFF5F5F5), // Default gray background
    this.shadow = false,
    this.elevation = 4.0,
  });

  /// The widget content inside the card.
  final Widget child;

  /// Padding inside the card.
  final EdgeInsetsGeometry padding;

  /// Margin around the card.
  final EdgeInsetsGeometry margin;

  /// Border radius for rounded corners.
  final double borderRadius;

  /// Background color of the card.
  final Color backgroundColor;

  /// Whether to add shadow for the card.
  final bool shadow;

  /// Elevation value for the shadow effect (ignored if `shadow` is false).
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: shadow
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: elevation,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DizzexInputBox extends StatelessWidget {
  const DizzexInputBox({
    super.key,
    required this.controller,
    required this.hintText,
    required this.title,
    this.obscureText = false,
    this.maxLines = 1,
    this.color = Colors.grey,
    this.textStyle,
    this.hintStyle,
    this.borderRadius = 6.0,
    this.borderColor = Colors.grey,
  });

  final TextEditingController controller;
  final String hintText;
  final String title;
  final bool obscureText;
  final int maxLines;
  final Color color;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final double borderRadius;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: controller,
          obscureText: obscureText,
          maxLines: maxLines,
          style: textStyle ??
              const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Outfit',
              ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle ??
                TextStyle(
                  fontSize: 16,
                  color: color,
                  fontFamily: 'Outfit',
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

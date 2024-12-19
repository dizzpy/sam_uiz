import 'package:flutter/material.dart';

class DizzexButton extends StatelessWidget {
  const DizzexButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    this.borderRadius = 6.0,
    this.width = double.infinity,
    this.height = 50.0,
    this.fontWeight = FontWeight.normal,
  });

  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final double borderRadius;
  final double width;
  final double height;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

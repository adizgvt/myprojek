
import 'package:flutter/material.dart';

class OutlinedText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color fontColor;
  final Color outlineColor;
  final double outlineWidth;

  OutlinedText({
    required this.text,
    required this.fontSize,
    required this.fontColor,
    required this.outlineColor,
    required this.outlineWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Stroke
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = outlineWidth
              ..color = outlineColor,
          ),
        ),
        // Fill
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
          ),
        ),
      ],
    );
  }
}
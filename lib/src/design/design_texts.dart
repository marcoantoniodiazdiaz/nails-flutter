import 'package:flutter/material.dart';

class DesignText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  const DesignText(this.text,
      {this.fontSize, this.color, this.textAlign, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      textAlign: this.textAlign,
      style: TextStyle(
        color: this.color,
        fontWeight: this.fontWeight,
        fontSize: this.fontSize,
      ),
    );
  }
}

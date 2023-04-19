import 'package:flutter/material.dart';

class MntSoText extends StatelessWidget {
  final String text;
  final double size;
  final double? textHeight;
  final Color color;
  final FontWeight fontWeight;
  final FontStyle? style;
  final TextAlign? align;
  final int? maxLine;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  MntSoText({
    required this.text,
    required this.size,
    this.textHeight,
    required this.color,
    required this.fontWeight,
    this.style,
    this.align,
    this.maxLine,
    this.textOverflow,
    this.textDecoration
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: color,
        fontStyle: style,
        fontWeight: fontWeight,
        fontSize: size,
        fontFamily: 'h_regular'
      ),
      textAlign: align, overflow: textOverflow, maxLines: maxLine
    );
  }
}

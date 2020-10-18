import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {
  final String type;
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final int maxLines;
  final TextOverflow textOverflow;

  const MyCustomText({
    Key key,
    this.type,
    @required this.text,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color),
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}

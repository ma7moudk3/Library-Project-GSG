import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final Alignment alignment;
  final TextAlign textAlign ;
  const SecondaryText(
      {Key key,
      this.text = "",
      this.fontSize = 16,
      this.textColor,
      this.fontWeight = FontWeight.normal,
      this.alignment = Alignment.center, this.textAlign})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: ScreenUtil().screenWidth * 0.95,
      child: Text(text,
          textAlign: textAlign,
          style: TextStyle(
              fontSize: fontSize,
              color: textColor,
              fontWeight: fontWeight,
              fontFamily: "SuisseIntl",
              height: 1.7)),
    );
  }
}

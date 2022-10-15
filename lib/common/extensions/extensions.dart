import 'package:flutter/material.dart';

extension StyledText on String{
  Widget withStyle(TextStyle style) {
    return Text(this, style: style,);
  }
}

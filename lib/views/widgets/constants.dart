import 'package:flutter/material.dart';
import 'package:promilo/views/widgets/colors.dart';

SizedBox kheight(double? height) {
  return SizedBox(
    height: height,
  );
}

TextStyle boldPrimaryText() {
  return TextStyle(
    color: primary,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
}

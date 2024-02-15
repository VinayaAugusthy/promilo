import 'package:flutter/material.dart';
import 'package:promilo/models/core/colors.dart';

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

List<String> carouselItems = [
 
      'https://images.pexels.com/photos/3719037/pexels-photo-3719037.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1709003/pexels-photo-1709003.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/8349233/pexels-photo-8349233.jpeg?auto=compress&cs=tinysrgb&w=1260',
];

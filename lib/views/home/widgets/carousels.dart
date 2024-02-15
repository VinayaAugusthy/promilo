import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:promilo/models/core/constants.dart';

class MeetingCarousels extends StatelessWidget {
  const MeetingCarousels({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: carouselItems.length,
      itemBuilder:
          (BuildContext context, int index, int realIndex) {
        return Stack(
          children: [
            Image.network(
              carouselItems[index],
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 0.2,
                sigmaY: 0.2,
              ),
              child: Container(
                color: Colors.black.withOpacity(
                  0.5,
                ),
                width: double.infinity,
                height: size.height * 0.2,
              ),
            ),
            Positioned(
              top: size.height / 10,
              left: size.width / 18,
              bottom: 10,
              child: SizedBox(
                width: size.width / 2,
                child: const Text(
                  'Popular Meetups in India',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: size.height * 0.2,
        enlargeCenterPage: true,
        autoPlay: true,
        viewportFraction: 0.8,
      ),
    );
  }
}

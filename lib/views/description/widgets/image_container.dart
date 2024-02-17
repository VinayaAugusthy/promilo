import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:promilo/models/core/colors.dart';
import 'package:promilo/models/core/constants.dart';
import 'package:share_plus/share_plus.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 200, 206, 209),
      ),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: carouselItems.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Image.network(
                carouselItems[index],
                fit: BoxFit.cover,
                width: double.infinity,
              );
            },
            options: CarouselOptions(
              height: size.height / 2.3,
              autoPlay: true,
              viewportFraction: 1,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    size: size.width / 16,
                    Icons.file_download_outlined,
                    color: greyColor,
                  ),
                  Icon(
                    size: size.width / 16,
                    Icons.bookmark_border,
                    color: greyColor,
                  ),
                  Icon(
                    size: size.width / 16,
                    Icons.favorite_border,
                    color: greyColor,
                  ),
                  Icon(
                    size: size.width / 16,
                    Icons.center_focus_weak,
                    color: Colors.black,
                  ),
                  Icon(
                    size: size.width / 16,
                    Icons.star_border,
                    color: Colors.black,
                  ),
                  IconButton(
                    iconSize: size.width / 22,
                    onPressed: () async {
                      Share.share(
                        "Share content here (e.g., image URL, text, etc.)",
                        subject: "Share subject (optional)",
                      );
                    },
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:promilo/views/widgets/colors.dart';

class IconRow extends StatelessWidget {
  const IconRow({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Icon(
              Icons.bookmark_border_outlined,
              color: primary,
            ),
            Text(
              '1034',
              style: TextStyle(
                color: greyColor,
                fontSize: size.width / 30,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.favorite_outline,
              color: primary,
            ),
            Text(
              '1034',
              style: TextStyle(
                color: greyColor,
                fontSize: size.width / 30,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
          ),
          width: size.width / 3.5,
          height: size.height / 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                size: size.width / 30,
                Icons.star,
                color: Colors.blue,
              ),
              Icon(
                size: size.width / 30,
                Icons.star,
                color: Colors.blue,
              ),
              Icon(
                size: size.width / 30,
                Icons.star,
                color: Colors.blue,
              ),
              Icon(
                size: size.width / 30,
                Icons.star_border_outlined,
                color: Colors.blue,
              ),
              Icon(
                size: size.width / 30,
                Icons.star,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Text(
          '3.2',
          style: TextStyle(color: primary),
        ),
      ],
    );
  }
}

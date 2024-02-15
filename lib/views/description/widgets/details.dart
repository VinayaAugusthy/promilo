import 'package:flutter/material.dart';
import 'package:promilo/models/core/colors.dart';
import 'package:promilo/models/core/constants.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Actor',
          style: boldPrimaryText(),
        ),
        kheight(8),
        Text(
          'Indian Actress',
          style: TextStyle(color: greyColor),
        ),
        kheight(8),
        Row(
          children: [
            Icon(
              size: size.width / 26,
              Icons.access_time,
              color: greyColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Duration 20 Mins',
              style: TextStyle(color: greyColor),
            )
          ],
        ),
        kheight(8),
        Row(
          children: [
            Icon(
              size: size.width / 26,
              Icons.wallet_outlined,
              color: greyColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Total Average Fees ₹9,999',
              style: TextStyle(color: greyColor),
            )
          ],
        ),
        kheight(8),
        Text(
          'About',
          style: boldPrimaryText(),
        ),
        kheight(8),
        Text(
          'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of wing on a surf camp.',
          style: TextStyle(color: greyColor),
        ),
        kheight(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'See More',
              style: TextStyle(color: primary),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:promilo/views/home/widgets/meetup_card.dart';

class MeetupWidget extends StatelessWidget {
  const MeetupWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4,
      child: ListView.builder(
        itemBuilder: (context, index) => TrendingMeetups(
          size: size,
          index: index,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
      ),
    );
  }
}
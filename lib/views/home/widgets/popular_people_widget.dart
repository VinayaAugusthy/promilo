import 'package:flutter/material.dart';
import 'package:promilo/views/home/widgets/authour.dart';

class PopularPeopleWidget extends StatelessWidget {
  const PopularPeopleWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4,
      child: ListView.builder(
        itemBuilder: (context, index) => AuthourCard(size: size),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
      ),
    );
  }
}

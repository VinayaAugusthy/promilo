import 'package:flutter/material.dart';

class TrendingMeetups extends StatelessWidget {
  const TrendingMeetups({
    super.key,
    required this.size,required this.index,
  });

  final Size size;
  final int index ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: size.height / 4,
            width: size.width / 2.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://img.freepik.com/free-photo/business-network_53876-123669.jpg?w=740&t=st=1707910043~exp=1707910643~hmac=13ac57e9b25a06d75555427ad8bd80fa29a4628f8610abc421b6d2c7d27a8336',
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: size.width / 9,
          bottom: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '0${index + 1}',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: size.width / 4,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
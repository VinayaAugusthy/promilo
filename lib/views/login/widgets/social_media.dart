import 'package:flutter/material.dart';

class SocialMediaHandlers extends StatelessWidget {
  const SocialMediaHandlers({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/google.png',
          height: size.width / 12,
          width: size.width / 12,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/linkedin.png',
          height: size.width / 10,
          width: size.width / 10,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/facebook.jpg',
          height: size.width / 10,
          width: size.width / 10,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/insta.png',
          height: size.width / 12,
          width: size.width / 10,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/whatsapp.png',
          height: size.width / 10,
          width: size.width / 10,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}

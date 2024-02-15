import 'package:flutter/material.dart';
import 'package:promilo/models/core/colors.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'By continuing you are agree to',
            style: TextStyle(
              fontSize: 16,
              color: greyColor,
            ),
          ),
          RichText(
            text: TextSpan(
              text: "promilo's  ",
              style: TextStyle(
                color: greyColor,
                fontSize: 16,
              ),
              children: const [
                TextSpan(
                  text: 'Terms of use & privacy policy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
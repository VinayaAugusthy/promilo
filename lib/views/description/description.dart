import 'package:flutter/material.dart';
import 'package:promilo/views/description/widgets/details.dart';
import 'package:promilo/views/description/widgets/icon_row.dart';
import 'package:promilo/views/description/widgets/image_container.dart';
import 'package:promilo/views/widgets/bottom_bar.dart';
import 'package:promilo/views/widgets/colors.dart';
import 'package:promilo/views/widgets/constants.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Description',
          style: TextStyle(
            fontSize: 24,
            color: primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width / 16,
          right: size.width / 16,
          top: size.width / 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageContainer(size: size),
              kheight(10),
              SizedBox(
                width: size.width,
                child: IconRow(size: size),
              ),
              kheight(10),
              Details(size: size)
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}


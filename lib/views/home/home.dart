import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:promilo/views/home/widgets/authour.dart';
import 'package:promilo/views/home/widgets/carousels.dart';
import 'package:promilo/views/home/widgets/search_bar.dart';
import 'package:promilo/views/widgets/colors.dart';
import 'package:promilo/views/widgets/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Individual Meetup',
          style: boldPrimaryText(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width / 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarWidget(size: size),
              kheight(20),
              MeetingCarousels(size: size),
              kheight(20),
              AuthourCard(size: size)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:promilo/views/home/widgets/carousels.dart';
import 'package:promilo/views/home/widgets/meetup.dart';
import 'package:promilo/views/home/widgets/popular_people_widget.dart';
import 'package:promilo/views/home/widgets/search_bar.dart';
import 'package:promilo/views/widgets/colors.dart';
import 'package:promilo/views/widgets/constants.dart';

import '../widgets/bottom_bar.dart';

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
              SearchBarWidget(size: size),
              kheight(20),
              MeetingCarousels(size: size),
              kheight(20),
              Text(
                'Trending Popular People',
                style: boldPrimaryText(),
              ),
              kheight(10),
              PopularPeopleWidget(size: size),
              kheight(20),
              Text(
                'Top Trending Meetups',
                style: boldPrimaryText(),
              ),
              MeetupWidget(size: size),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

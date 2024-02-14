import 'package:flutter/material.dart';
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
          style: TextStyle(
            fontSize: 24,
            color: primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width / 16),
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
              SizedBox(
                height: size.height / 4,
                // width: size.width,
                child: ListView.builder(
                  // shrinkWrap: true,
                  itemBuilder: (context, index) => AuthourCard(size: size),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                ),
              ),
              kheight(20),
              Text(
                'Top Trending Meetups',
                style: boldPrimaryText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

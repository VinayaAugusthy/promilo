import 'package:flutter/material.dart';
import 'package:promilo/views/description/description.dart';
import 'package:promilo/views/home/home.dart';
import 'package:promilo/views/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Description(),
      debugShowCheckedModeBanner: false,
    );
  }
}



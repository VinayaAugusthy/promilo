// ignore_for_file: avoid_print, use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:promilo/controllers/login/snackbar.dart';
import 'package:promilo/views/home/home.dart';

login(String email, String password, BuildContext context) async {
  final loginEndpoint =
      Uri.parse('https://apiv2stg.promilo.com/user/oauth/token');

  final hashedPassword = sha256.convert(utf8.encode(password)).toString();
  final body = {
    'username': email,
    'password': hashedPassword,
    'grant_type': 'password',
  };

  final headers = {
    'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
  };
  try {
    final response =
        await http.post(loginEndpoint, body: body, headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final data = json.encode(response.body);
      print(data.toString());
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    } else {
      print('Invalid ID and password');
      showSnackBar(context);
    }
  } catch (e) {
    print('Error during login:$e');
  }
}

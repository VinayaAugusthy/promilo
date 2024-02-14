// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

login(String email, String password) async {
  final loginEndpoinnt =
      Uri.parse(": https://apiv2stg.promilo.com/user/oauth/token");
  final hashedPassword = sha256.convert(utf8.encode(password)).toString();
  final body = {
    'username': email,
    'password': hashedPassword,
    'grant_type': password,
  };
  final headers = {
    'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
  };
  try {
    final response =
        await http.post(loginEndpoinnt, body: body, headers: headers);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data.toString());
    } else {
      print('Invalid ID and password');
    }
  } catch (e) {
    print('Error during login:$Error');
  }
}

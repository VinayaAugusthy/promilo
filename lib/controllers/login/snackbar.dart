// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:promilo/models/core/colors.dart';

showSnackBar(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: primary,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 10),
      content: const Text(
        'Invalid email and password',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

// final _errorMessage = 'Username password doesnot match';
//       //Snackbar

//     ScaffoldMessenger.of(ctx ).showSnackBar(
//       SnackBar(
//         behavior: SnackBarBehavior.floating,
//         backgroundColor: Colors.red,
//         margin: EdgeInsets.all(10),
//         duration:Duration(seconds: 10),
//         content: Text(_errorMessage),
//         ),
//         );
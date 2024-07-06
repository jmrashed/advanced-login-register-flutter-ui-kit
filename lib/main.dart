import 'package:advanced_login_app/login.dart';
import 'package:advanced_login_app/register.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) =>const MyRegister(),
      'login': (context) => const MyLogin(),
    },
  ));
}

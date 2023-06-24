import 'package:demofirstone/login.dart';
import 'package:flutter/material.dart';
import 'package:demofirstone/sign_in.dart';
import 'package:demofirstone/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => Home(),
      'dashboard': (context) => DashboardPage(),
    },
  ));
}
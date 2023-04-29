import 'package:demofirstone/login.dart';
import 'package:flutter/material.dart';
import 'package:demofirstone/sign_in.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context)=>MyLogin()
    },

  ));
}

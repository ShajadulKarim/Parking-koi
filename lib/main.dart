
import 'package:flutter/material.dart';
import 'package:demofirstone/home.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home' : (context)=>Home(),

    },

  ));
}

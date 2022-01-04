import 'package:flutter/material.dart';
import 'package:seminar_project/routes/load.dart';
import 'package:seminar_project/routes/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // Simple routing
    routes: {
      '/' : (context) => Loading(),
      '/home' : (context) => Home(),
    },
  ));
}
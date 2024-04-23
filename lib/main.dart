// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_frontend/app_screens/home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}

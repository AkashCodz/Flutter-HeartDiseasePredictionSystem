// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, must_be_immutable, use_key_in_widget_constructors, avoid_print, unnecessary_this, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  var nameFromHome;
  Result(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    String res() {
      if (nameFromHome == 0) {
        return "no Disease";
      } else {
        return "Heart Disease";
      }
    }
  String resultData = res();

    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("The Person has $resultData",
                style: GoogleFonts.caveat(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
          ),
        ));
  }
}

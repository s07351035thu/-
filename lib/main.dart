import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ItemCard.dart';
import 'dart:math';
import 'foodClass.dart';
import 'homePage.dart';
import 'login.dart';
import 'package:flutter/services.dart';


void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) {return loginPage();},
      "HomePage": (context) {return HomePage();},

    },
  ));
}


class mainApp extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xffcbf1fd),
        systemNavigationBarColor: Color(0xffcbf1fd),
      )
    );
    return Scaffold();
  }
}
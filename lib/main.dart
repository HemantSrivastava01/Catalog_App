import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var day = "Tuesday";
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      home: LoginPage(),
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        //MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

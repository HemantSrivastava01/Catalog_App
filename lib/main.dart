import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var day = "Tuesday";
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.lightGreen),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.light),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}

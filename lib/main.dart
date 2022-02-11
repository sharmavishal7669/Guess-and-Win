import 'package:flutter/material.dart';
import 'package:guess_and_win/screens/home_screen.dart';
import 'package:guess_and_win/screens/login_screen.dart';
import 'package:guess_and_win/utilities/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
      },
    );
  }
}

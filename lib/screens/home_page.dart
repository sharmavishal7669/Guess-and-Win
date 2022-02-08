import 'package:flutter/material.dart';
import 'package:guess_and_win/utilities/bottomNavigationBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guess & Earn'),
      ),
      body: Center(
        child: Container(
          child: Text('Guess & Earn'),
        ),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:guess_and_win/utilities/bottomNavigationBar.dart';
import 'package:guess_and_win/utilities/routes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Welcome')),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone number'),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                TextButton(onPressed: () {}, child: Text('New Registration')),
                TextButton(onPressed: () {}, child: Text('Forgot password ?')),
              ]),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigator());
  }
}

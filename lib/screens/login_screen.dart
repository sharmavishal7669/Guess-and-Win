import 'package:flutter/material.dart';
import 'package:guess_and_win/utilities/routes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Welcome')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone number'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}

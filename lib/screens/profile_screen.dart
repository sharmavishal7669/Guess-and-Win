import 'package:flutter/material.dart';
import 'package:guess_and_win/utilities/bottomNavigationBar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Profile'),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  title: const Text('Firstname Lastname'),
                  subtitle: Text(
                    'ID: 123456',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Text(
                    'Available balance: ₹100',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Recharge'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Card(
                child: ListTile(
                  title: Text('App Download'),
                  leading: Icon(Icons.download),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Change Password'),
                  leading: Icon(Icons.security_sharp),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Complaints & Suggestions'),
                  leading: Icon(Icons.chat),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Logout'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:collaborate/screens/clubs_screen.dart';
import 'package:collaborate/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
        backgroundColor: Color.fromARGB(255, 163, 223, 113),
         title: Text('College Clubs & Organizations'),

        
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 40),
          children: [
            ListTile(
              title: Text('Clubs'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClubsScreen()));
              },
            ),
            ListTile(
              title: Text('Organizations'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClubsScreen()));
              },
            ),
            ListTile(
              title: Text('Communities'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClubsScreen()));
              },
            ),
            ListTile(
              title: Text('Edit'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClubsScreen()));
              },
            ),
            ListTile(
              title: Text('My Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to the College Clubs & Organizations App'),
      ),
    );
  }
}

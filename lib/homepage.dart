import 'package:flutter/material.dart';
import 'package:collaborate/screens/clubs_screen.dart';
import 'package:collaborate/introduction_animation/introduction_animation_screen.dart';
import 'package:collaborate/feedback_screen.dart';
import 'package:collaborate/screens/org_screen.dart';
import 'package:collaborate/screens/com_screen.dart';
import 'package:collaborate/models/editclubs.dart';
import 'package:collaborate/models/help.dart';
import 'package:collaborate/profile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            TextButton(child: const Text('Drawer Item'), onPressed: () {}),
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
                    MaterialPageRoute(builder: (context) => orgScreen()));
              },
            ),
            ListTile(
              title: Text('Communities'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => comScreen()));
              },
            ),
            ListTile(
              title: Text('Edit'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClubFusionApp()));
              },
            ),
            ListTile(
              title: Text('My Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              title: Text('Help'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => helpScreen()));
              },
            ),
            ListTile(
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FeedbackScreen()));
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: IntroductionAnimationScreen(),
      ),
    );
  }
}

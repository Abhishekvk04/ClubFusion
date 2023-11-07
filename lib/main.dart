/*import 'package:flutter/material.dart';
import 'package:collaborate/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
    );
  }
}*/

// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:collaborate/screens/clubs_screen.dart';
import 'package:collaborate/login.dart';
import 'package:collaborate/introduction_animation/introduction_animation_screen.dart';
import 'package:collaborate/feedback_screen.dart';

/// Flutter code sample for [ActionIconTheme].

void main() {
  runApp(const ActionIconThemeExampleApp());
}

class _CustomEndDrawerIcon extends StatelessWidget {
  const _CustomEndDrawerIcon();

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localization =
        MaterialLocalizations.of(context);
    return Icon(
      Icons.more_horiz,
      semanticLabel: localization.openAppDrawerTooltip,
    );
  }
}

class _CustomDrawerIcon extends StatelessWidget {
  const _CustomDrawerIcon();

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localization =
        MaterialLocalizations.of(context);
    return Icon(
      Icons.segment,
      semanticLabel: localization.openAppDrawerTooltip,
    );
  }
}

class ActionIconThemeExampleApp extends StatelessWidget {
  const ActionIconThemeExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (BuildContext context) {
            return const Icon(Icons.arrow_back_ios_new_rounded);
          },
          drawerButtonIconBuilder: (BuildContext context) {
            return const _CustomDrawerIcon();
          },
          endDrawerButtonIconBuilder: (BuildContext context) {
            return const _CustomEndDrawerIcon();
          },
        ),
      ),
      home: const MyHomePage(title: 'RIT Clubs Collaboration'),
    );
  }
}

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
            ListTile(
              title: Text('Help'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
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

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<MySecondPage>(builder: (BuildContext context) {
            return const MySecondPage();
          }),
        );
      },
      icon: const Icon(Icons.arrow_forward),
      label: const Text('Next page'),
    );
  }
}

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      endDrawer: const Drawer(),
    );
  }
}

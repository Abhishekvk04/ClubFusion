import 'package:collaborate/login.dart';
import 'package:flutter/material.dart';
import 'package:collaborate/models/club.dart'; // Define Club class
import 'package:collaborate/screens/club_details_screen.dart';
import 'package:collaborate/club_coderit.dart';
import 'package:collaborate/course_info_screen.dart';

class helpScreen extends StatefulWidget {
  @override
  _helpScreenState createState() => _helpScreenState();
}

class _helpScreenState extends State<helpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Club Fusion Help Center'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Club Fusion App'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Add logic to navigate to the home page.
              },
            ),
            ListTile(
              title: Text('Create a Club'),
              onTap: () {
                // Add logic to navigate to the Create a Club page.
              },
            ),
            // Add more navigation items as needed.
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HelpSection(
                title: 'Getting Started',
                content: 'Learn how to get started with Club Fusion.',
              ),
              HelpSection(
                title: 'Managing Clubs',
                content: 'Discover how to manage your clubs and communities.',
              ),
              // Add more HelpSection widgets for other topics.
            ],
          ),
        ),
      ),
    );
  }
}

class HelpSection extends StatelessWidget {
  final String title;
  final String content;

  HelpSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(content),
        Divider(
          thickness: 2.0,
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}

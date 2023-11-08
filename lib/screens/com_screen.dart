import 'package:collaborate/login.dart';
import 'package:flutter/material.dart';
import 'package:collaborate/models/club.dart'; // Define Club class
import 'package:collaborate/screens/club_details_screen.dart';
import 'package:collaborate/club_coderit.dart';
import 'package:collaborate/course_info_screen.dart';

class comScreen extends StatefulWidget {
  @override
  _comScreenState createState() => _comScreenState();
}

class _comScreenState extends State<comScreen> {
  List<Club> clubs = []; // Store club data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Communities'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CourseInfoScreen1()));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text(
                  'Mukti',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: Colors.red,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CourseInfoScreen()));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text(
                  'FOSS Community',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}

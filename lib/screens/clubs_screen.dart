import 'package:flutter/material.dart';
import 'package:collaborate/models/club.dart'; // Define Club class
import 'package:collaborate/screens/club_details_screen.dart';

class ClubsScreen extends StatefulWidget {
  @override
  _ClubsScreenState createState() => _ClubsScreenState();
}

class _ClubsScreenState extends State<ClubsScreen> {
  List<Club> clubs = []; // Store club data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Clubs'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 4,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Code Rit',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.red,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'ITC Rit',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.indigo,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'IEEE RIT',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.teal,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'ACM Rit ',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.cyan,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Mukti',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'GDSC RIT',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Studio RIT',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'iclick',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.purple,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Inferno',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Lasya',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Prayaag',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'TNT',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Theatrix',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Chiraranga	',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                '	DEBSOC',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Quiz Club',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Comedy Club',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Fashion Team',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Nakama',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Finance Club',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'Upthrust',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
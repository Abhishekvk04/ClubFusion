import 'package:flutter/material.dart';
import 'package:collaborate/models/club.dart';

class ClubDetailsScreen extends StatelessWidget {
  final Club club;

  ClubDetailsScreen({required this.club});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(club.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(club.description),
      ),
    );
  }
}

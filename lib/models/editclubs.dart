import 'package:flutter/material.dart';

class ClubFusionApp extends StatefulWidget {
  @override
  _clubScreenState createState() => _clubScreenState();
}

class _clubScreenState extends State<ClubFusionApp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Club'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Club Name'),
                  ),
                  SizedBox(
                      height:
                          16.0), // Add space between the TextField and button
                  TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(labelText: 'Club Description'),
                  ),
                  SizedBox(
                      height:
                          16.0), // Add space between the TextField and button
                  ElevatedButton(
                    onPressed: () {
                      // Save the club details to your database or storage.
                      final clubName = _nameController.text;
                      final clubDescription = _descriptionController.text;

                      // You can add the logic to save the data to your database here.

                      // After saving, you can navigate back or perform any other actions.
                      Navigator.pop(context);
                    },
                    child: Text('Add Club'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

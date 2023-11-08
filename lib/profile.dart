import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEditing = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController linkedinController = TextEditingController();
  TextEditingController instaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  List<String> hobbies = [];
  List<String> skills = [];
  List<String> technicalSkills = [];
  List<String> otherSocials = [];

  void toggleEditing() {
    setState(() {
      isEditing = !isEditing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          IconButton(
            icon: Icon(isEditing ? Icons.save : Icons.edit),
            onPressed: toggleEditing,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: isEditing
                    ? SizedBox(
                        width: 120,
                        height: 120,
                        child: TextFormField(
                            // Add logic to change the user's photo.
                            ),
                      )
                    : CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/0a/0e/1b/0a0e1b8b09f5512f02658357d9edfe36.jpg'),
                      ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
                enabled: isEditing,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: experienceController,
                decoration: InputDecoration(labelText: 'Experience'),
                enabled: isEditing,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                enabled: isEditing,
                maxLines: 3,
              ),
              SizedBox(height: 16),
              Text('Hobbies', style: TextStyle(fontSize: 18)),
              isEditing
                  ? TextFormField(
                      // Add logic to add hobbies.
                      )
                  : Column(
                      children: hobbies.map((hobby) => Text(hobby)).toList(),
                    ),
              SizedBox(height: 16),
              Text('Skills', style: TextStyle(fontSize: 18)),
              isEditing
                  ? TextFormField(
                      // Add logic to add skills.
                      )
                  : Column(
                      children: skills.map((skill) => Text(skill)).toList(),
                    ),
              SizedBox(height: 16),
              Text('Technical Skills', style: TextStyle(fontSize: 18)),
              isEditing
                  ? TextFormField(
                      // Add logic to add technical skills.
                      )
                  : Column(
                      children: technicalSkills
                          .map((techSkill) => Text(techSkill))
                          .toList(),
                    ),
              SizedBox(height: 16),
              Text('Social Links', style: TextStyle(fontSize: 18)),
              isEditing
                  ? TextFormField(
                      // Add logic to add social links.
                      )
                  : Column(
                      children:
                          otherSocials.map((social) => Text(social)).toList(),
                    ),
              SizedBox(height: 16),
              TextFormField(
                controller: linkedinController,
                decoration: InputDecoration(labelText: 'LinkedIn'),
                enabled: isEditing,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: instaController,
                decoration: InputDecoration(labelText: 'Instagram'),
                enabled: isEditing,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                enabled: isEditing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

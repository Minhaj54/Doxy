import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.deepPurpleAccent,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile picture
              const CircleAvatar(
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              const SizedBox(height: 16),

              // Name
              const Text(
                'Minhaj Raza',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),

              // Email
              Text(
                'minhaj@shandynotes.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16),

              // Bio or description
              Text(
                'Passionate about technology, coding, and design. Loves to explore new frameworks and create user-friendly applications.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 24),

              // Action buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add edit profile functionality
                    },
                    child: Text('Edit Profile'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add logout functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text('Logout'),
                  ),
                ],
              ),
              SizedBox(height: 32),

              // Additional details
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue),
                title: Text('Phone'),
                subtitle: Text('+123456789'),
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.blue),
                title: Text('Location'),
                subtitle: Text('New York, USA'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.work, color: Colors.blue),
                title: Text('Profession'),
                subtitle: Text('Software Engineer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

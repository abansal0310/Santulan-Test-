import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CommunityPage(),
    );
  }
}

class CommunityPage extends StatelessWidget {
  final List<String> userNames = ['user_name1', 'user_name2', 'user_name3', 'user_name4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Replace with your app logo
            Image.asset(
              'assets/app_logo.png',
              height: 30,
              width: 30,
            ),
            SizedBox(width: 8), // Add space between logo and app name
            Text(
              'App Name',
              style: TextStyle(fontSize: 18),
            ),
            Spacer(), // To create space between elements
            Text('500'), // Number of points
            IconButton(
              icon: Icon(Icons.menu), // Replace with your custom image icon
              onPressed: () {
                // Menu button action
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: userNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                // Add user profile image or icon
                backgroundColor: Colors.green,
                child: Icon(Icons.person),
              ),
              title: Text(userNames[index]),
              // Add more user details or post content here
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
        ],
        currentIndex: 0, // Set the current index for the active tab
        selectedItemColor: Colors.green, // Color of the selected tab
        unselectedItemColor: Colors.grey, // Color of unselected tabs
        showSelectedLabels: true, // Show labels for selected tabs
        showUnselectedLabels: true, // Show labels for unselected tabs
      ),
    );
  }
}

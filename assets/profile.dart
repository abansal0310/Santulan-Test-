import 'package:flutter/material.dart';
import 'package:green_quest/comingsoon.dart';

class Profile extends StatelessWidget {
  final List<Map<String, dynamic>> buttonDetails = [
    {'name': 'My stats', 'icon': Icons.bar_chart},
    {'name': 'Profile Details', 'icon': Icons.person},
    {'name': 'My coupons', 'icon': Icons.card_giftcard},
    {'name': 'FAQ', 'icon': Icons.help},
    {'name': 'Settings', 'icon': Icons.settings},
    {'name': 'Verify yourself as an event organiser', 'icon': Icons.verified_user},
    {'name': 'About Us', 'icon': Icons.info},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Your App Name',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.black, // Replace with your avatar image asset
                ),
                SizedBox(width: 16.0),
                Text(
                  'Hi, user_name',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Expanded(
              child: ListView.builder(
                itemCount: buttonDetails.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CustomButton(
                      text: buttonDetails[index]['name'],
                      icon: buttonDetails[index]['icon'],
                      onPressed: () {
                        // Handle button tap here
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Comingsoon()),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;

  const CustomButton({Key? key, required this.text, this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        primary: Colors.white,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon),
            SizedBox(width: 10.0),
          ],
          Text(text),
        ],
      ),
    );
  }
}

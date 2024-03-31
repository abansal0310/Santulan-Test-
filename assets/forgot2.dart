import 'package:flutter/material.dart';

class NPassword extends StatefulWidget {
  const NPassword({Key? key}) : super(key: key);

  @override
  State<NPassword> createState() => _NPasswordState();
}

class _NPasswordState extends State<NPassword> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(159, 190, 140, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            Image.asset(
              'assets/app_logo.png', // Replace with your app logo image path
              height: 80,
              width: 80,
            ),
            SizedBox(height: 20.0),
            // New Password Text Field
            TextField(
              controller: _newPasswordController,
              obscureText: true, // Hide password characters
              decoration: InputDecoration(
                labelText: 'New Password',
                hintText: 'Enter your new password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 16.0),
            // Confirm Password Text Field
            TextField(
              controller: _confirmPasswordController,
              obscureText: true, // Hide password characters
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Re-enter your new password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),
            // Done Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(83, 140, 47, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 4,
              ),
              onPressed: () {
                // Navigation logic or perform actions
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}

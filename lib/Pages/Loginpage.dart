import 'package:flutter/material.dart';
import 'RegisterPage.dart'; // Import the RegisterPage file

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              title: Text('Login'),
              centerTitle: true,
              automaticallyImplyLeading: false, // Remove back button
            ),
            SizedBox(height: 20), // Adjust the spacing between the AppBar and the login box
            _buildLoginBox(context),
            SizedBox(height: 20), // Add spacing between the login box and the text
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text(
                'New user? Register now',
                style: TextStyle(color: Colors.blue), // Add some style to the text
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginBox(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
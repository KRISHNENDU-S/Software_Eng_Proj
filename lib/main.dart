import 'package:flutter/material.dart';
import 'Pages/Loginpage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emergency Notify',
      home: Loginpage(),
    );
  }
}
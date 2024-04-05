import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your app name',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Krishnendu'),
        ),
        body: Center(
          child: Text('HelpMe'),
        ),
      ),
    );
  }
}
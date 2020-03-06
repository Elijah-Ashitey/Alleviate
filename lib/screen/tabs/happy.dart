import 'package:flutter/material.dart';

class Happy extends StatefulWidget {
  @override
  _HappyState createState() => _HappyState();
}

class _HappyState extends State<Happy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text("Happy goes here"),
      ),
    );
  }
}

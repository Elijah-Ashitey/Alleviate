import 'package:flutter/material.dart';

class Diary extends StatefulWidget {
  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Text("Diary goes here"),
      ),
    );
  }
}

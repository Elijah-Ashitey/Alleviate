import 'package:alleviate/widget/appBar.dart';
import 'package:flutter/material.dart';

class Happy extends StatefulWidget {
  @override
  _HappyState createState() => _HappyState();
}

class _HappyState extends State<Happy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Happy"),
        backgroundColor: Color(0xffe3f2fd),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            tabs(() {}, Icons.movie, "MOVIES"),
            tabs(() {}, Icons.music_note, "MUSIC"),
            tabs(() {}, Icons.gamepad, "GAMES"),
            tabs(() {}, Icons.person, "EXERCISE"),
            tabs(() {}, Icons.book, "MOTIVATIONAL QUOTES"),
            tabs(() {}, Icons.favorite, "FAVOURITE"),
          ],
        ));
  }
}

Widget tabs(Function function, IconData icon, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 55,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
        ),
      ],
    )),
  );
}

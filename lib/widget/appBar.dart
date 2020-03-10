import 'package:flutter/material.dart';

AppBar appBar(String name) {
  return AppBar(
    leading: Text(""),
    title: Text(
      name,
      style: TextStyle(color: Colors.blue),
    ),
    // centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.notification_important,
            color: Colors.blue,
          ),
          onPressed: () {}),
      IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.blue,
          ),
          onPressed: () {})
    ],
  );
}

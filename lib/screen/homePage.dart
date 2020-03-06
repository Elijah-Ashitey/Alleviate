import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'tabs/chats.dart';
import 'tabs/contacts.dart';
import 'tabs/diary.dart';
import 'tabs/happy.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemPosition = 0;
  Widget _pageChoser(int page) {
    switch (page) {
      case 0:
        return Chat();
        break;
      case 1:
        return Happy();
        break;
      case 2:
        return Diary();

        break;
      case 3:
        return Contacts();
        break;
      default:
        return Container(
            child: Center(
          child: Text("No page found"),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageChoser(_selectedItemPosition),
      bottomNavigationBar: SnakeNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        style: SnakeBarStyle.pinned,
        backgroundColor: Colors.blue,
        selectionColor: Color(0xffe3f2fd),
        selectedIconColor: Colors.blue,
        snakeShape: SnakeShape.circle,

        //  backgroundColor:  Color.fromRGBO(244, 128, 71, 1),
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              title: Text(
                'Chat',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv, color: Colors.white),
              title: Text(
                'Happy',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt, color: Colors.white),
              title: Text(
                'Diary',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              title: Text(
                'Contacts',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}

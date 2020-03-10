import 'package:alleviate/data/chatData.dart';
import 'package:alleviate/widget/appBar.dart';
import 'package:alleviate/widget/chatWidget.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Home"),
      backgroundColor: Color(0xffe3f2fd),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          whatOnYourMind(context),
          Expanded(
              child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ChatWidget(
                  image: chats[index].image,
                  person: chats[index].person,
                  time: chats[index].time,
                  chat: chats[index].chat,
                  messages: chats[index].messages,
                  messImage: chats[index].messImage,
                );
              },
              itemCount: chats.length,
            ),
          ))
          // ChatWidget(),
          // ChatWidget(),
        ],
      ),
    );
  }
}

Widget time() {
  return Container(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Japan",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "just now",
        style: TextStyle(color: Colors.white),
      ),
    ],
  ));
}

Widget whatOnYourMind(BuildContext context) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        textAlign: TextAlign.center,

        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          border: InputBorder.none,
          hintStyle: TextStyle(
            // fontSize: 14,
            color: Colors.white,
          ),
        ),
        // controller: _accountNumber,
      ),
    ),
  );
}

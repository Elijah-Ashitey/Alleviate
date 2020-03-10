import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String image;
  final String person;
  final String time;
  final String chat;
  final int messages;
  final String messImage;
  ChatWidget(
      {this.image,
      this.person,
      this.time,
      this.chat,
      this.messages,
      this.messImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // decoration: BoxDecoration(
        //   color: Colors.blue,
        //   borderRadius: BorderRadius.all(Radius.circular(30)),
        // ),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          ClipOval(
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.12,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Text(
                            person,
                            style: TextStyle(color: Colors.white),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Text(
                                time,
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.12,
                          right: 12),
                      child: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: messImage == null
                          ? EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.10)
                          : EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.12,
                              right: MediaQuery.of(context).size.width * 0.12,
                              top: MediaQuery.of(context).size.width * 0.02,
                              bottom: MediaQuery.of(context).size.width * 0.02,
                            ),
                      child: Container(
                          child: Column(
                        children: <Widget>[
                          messImage != null
                              ? Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.asset(
                                    messImage,
                                    // width: 600.0,
                                    // height: 240.0,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(),
                          Text(chat, style: TextStyle(color: Colors.white))
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: Colors.blue,
                  ),
                  Text(
                    messages.toString(),
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

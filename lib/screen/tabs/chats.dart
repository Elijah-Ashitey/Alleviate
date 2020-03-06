import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        title: Text(
          "Home",
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
      ),
      backgroundColor: Color(0xffe3f2fd),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
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
          ),
          // SizedBox(height: 10),
          Padding(
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
                              child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Color(0xffe3f2fd),
                                    child: Icon(Icons.person),
                                  ),
                                ],
                              )
                            ],
                          )

                              /*  Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xffe3f2fd),
                                  child: Icon(Icons.person),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                // time()
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Japan",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "just now",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Container(
                                  color: Colors.white,
                                  width: 110,
                                  height: 2,
                                ),
                                // Text(
                                //   "Japan",
                                //   style: TextStyle(color: Colors.white),
                                // ),
                                // Expanded(
                                //   child: Text(
                                //     "just now",
                                //     textAlign: TextAlign.end,
                                //     style: TextStyle(color: Colors.white),
                                //   ),
                                // ),
                              ],
                            ),*/
                              ),
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
                          "5",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
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

import 'package:alleviate/widget/appBar.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Contact"),
        backgroundColor: Color(0xffe3f2fd),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            items(context, "Career and Counselling", ""),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                items(context, "Psychologist", ""),
                items(context, "Therapist", ""),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width * 0.15,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  // width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: 25,
                  child: FlatButton(
                    child: Text(
                      "GET HELP NOW",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
            ),
            Text(
              "CALL TEL:+233 204 999 221 / +233 245 945 752",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              "Email: career@ug.edu.gh",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              "Website: careers.ug.edu.gh",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            )
          ],
        ));
  }
}

Widget items(BuildContext context, String text, String image) {
  return Container(
    child: Column(
      children: <Widget>[
        ClipOval(
          child: Image.asset(
            'assets/images/messageIM.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    ),
  );
}

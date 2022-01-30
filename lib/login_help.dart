import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginHelp extends StatefulWidget {
  const LoginHelp({Key? key}) : super(key: key);

  @override
  _LoginHelpState createState() => _LoginHelpState();
}

class _LoginHelpState extends State<LoginHelp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Login help", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Text(
                    "Find your account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Enter your username or the email ",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "address or phone number linked to",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "your account",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.grey[850],
                  margin: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Username, email address or Phone number",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(16),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Next"),
                      ),
                    ),
                  ],
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                  )),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Divider(color: Colors.white)),
                ]),
                Container(
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebook,
                        size: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "Log in With Facebook",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 160,
                ),
                Align(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Need more help?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

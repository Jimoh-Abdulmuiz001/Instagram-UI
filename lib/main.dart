import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_application/login_help.dart';
import 'package:my_application/signup_page.dart';
import 'package:my_application/splash.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData.light(),
        routes: {
          "/signup_page": (context) => SignupPage(),
          "/main": (context) => MyApp(),
          "/login_help": (context) => LoginHelp(),
        },
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var valueChoose;

  List listItem = [
    "English",
    "Afrikaans",
    "Bahasa Indonesia",
    "Bahasa Melayu",
    "Dansk",
    "Deutsh",
    "Espanol",
    "Filpino",
    "frech",
    "Italino",
    "Turkish"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    child: DropdownButton(
                      hint: Text(
                        "English(United Kingdom)",
                        style: TextStyle(color: Colors.white),
                      ),
                      dropdownColor: Colors.black38,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 32,
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose == newValue;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem,
                                style: TextStyle(
                                  color: Colors.white,
                                )));
                      }).toList(),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: 21 / 9,
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/ig.jpeg"))),
                      ),
                    ),
                    Container(
                      color: Colors.grey[850],
                      margin: EdgeInsets.all(16),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Phone number, email address or username",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      color: Colors.grey[850],
                      margin: EdgeInsets.all(16),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                          color: Colors.blue,
                          margin: EdgeInsets.all(16),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Login"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Forgotten your login details?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/login_help");
                              print("Elevatedbutton");
                            },
                            color: Colors.black87,
                            child: Text(
                              "Get help logging in",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.grey,
                      )),
                      Text(
                        "OR",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(child: Divider(color: Colors.white)),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.facebook,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Text(
                          "Log in With Facebook",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 170,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/signup_page");
                                print("Elevatedbutton");
                              },
                              color: Colors.black87,
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

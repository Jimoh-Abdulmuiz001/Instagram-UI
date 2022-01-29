import 'package:flutter/material.dart';

import 'main.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/main": (context) => MyApp()},
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: SizedBox(
              height: 950,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage("assets/avatar.jprg.jpg"),
                        radius: 70,
                      ),
                    ),
                    TabBar(indicatorColor: Colors.grey, tabs: [
                      Tab(text: "Phone Number"),
                      Tab(text: "Email Address")
                    ]),
                    Column(
                      children: [
                        SizedBox(
                          height: 425,
                          child: TabBarView(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        color: Colors.grey[850],
                                        margin: EdgeInsets.all(16),
                                        child: TextField(
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                          controller: inputController,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            prefixIcon: Padding(
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  'NG +234 ',
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                )),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "You may receive SMS updates from Instagram and can",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "opt out at any time",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
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
                                      SizedBox(
                                        height: 170,
                                      ),
                                      Divider(
                                        color: Colors.grey,
                                      ),
                                      SingleChildScrollView(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Text(
                                                "Already have an account?",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            RaisedButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(
                                                      context, "/main");
                                                  print("Elevatedbutton");
                                                },
                                                color: Colors.black87,
                                                child: Text(
                                                  "Login",
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.white),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 30),
                                          color: Colors.grey[850],
                                          height: 50,
                                          child: TextField(
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                            controller: inputController,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                              hintText: "Email Address",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          height: 50,
                                          color: Colors.blue,
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 23),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text("Next"),
                                          ),
                                        ),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Already have an account?",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          RaisedButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, "/main");
                                                print("Elevatedbutton");
                                              },
                                              color: Colors.black87,
                                              child: Text(
                                                "Login",
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.white),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

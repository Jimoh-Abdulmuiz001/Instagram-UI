import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({ Key? key }) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     length: 2,
       child: Scaffold(
         backgroundColor: Colors.black,
         body: SizedBox(
           height: 500,
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
                 TabBar
                 (
                  indicatorColor: Colors.grey,
                   tabs: [
                   
                   Tab(text: "Phone Number") ,
                   Tab(text: "Email Address")
                   
                 ]),
                 SizedBox(
                   height: 20,
                   child: TabBarView(
                     children: [
                       Container(
                         color: Colors.white,
                         padding: EdgeInsets.all(24),
                         margin: EdgeInsets.all(16),
child: TextField(
  
decoration: InputDecoration(
  prefixStyle: TextStyle(color: Colors.green),
  prefixText: ("NG +234"),
  
),
),
                       ),
                       Container(
                         child: Text("djddjdjdj", style: TextStyle(color: Colors.white),),

                       ),
                     ],
                   ),
                 ),
                
               ],
               
             ),
           ),
         ),
         
       )
       
    );
    
  } }

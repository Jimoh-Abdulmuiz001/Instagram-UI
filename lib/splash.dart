import 'package:flutter/material.dart';
import 'package:my_application/main.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() { 
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/homeicon.jpeg"),
              radius: 100,
            ),
            SizedBox(height: 10,),
            
            
            Container(
              child: Text("Welcome", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),)),
             
            
          ],
        ),
      ),
    );
  }
}

                   
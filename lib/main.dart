import 'dart:async';

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3) ,()=>print("splash screen made"),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit:StackFit.expand,
        children: [
            Container(
             color: Colors.blue,
            ),
            Column(
              children: [
                Expanded(
                     flex:4,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius:50,
                        child:Icon(EvaIcons.twitter,
                          size: 60,
                        ),
                        
                      ),
                      SizedBox(
                        height:10.5,
                      ),
                      Text("Twitter",
                        style:TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,

                        ),

                      ),

                    ],
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Column(
                      children: [
                        CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("WELCOME",
                          style: TextStyle(
                            fontSize: 18.99,
                            color:Colors.grey[300],
                          ),
                        ),
                      ],
                  ), 
                ),
              ],
            ),
            


        ],
      ),
    );
  }
}
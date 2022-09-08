import 'package:flutter/material.dart';
import 'package:flutter_demo/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//Viewgroup: Row, Column, Stack.
//View: Text, Button, TextformField
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: WelcomeScreen()
      ),
      theme: ThemeData(
        fontFamily: "Urbanist"
      ),
    );
  }
}

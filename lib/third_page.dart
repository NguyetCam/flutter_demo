import 'package:flutter/material.dart';
import 'package:flutter_demo/second_page.dart';

class ThirdScreen extends StatelessWidget {
   ThirdScreen({Key? key, required this.param}) : super(key: key);

 int param;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Mr.Tung has bullied me $param times")),
      floatingActionButton: FloatingActionButton(onPressed: (){
        param=0;
        Navigator.of(context).pop(param);
      },),
    );
  }
}

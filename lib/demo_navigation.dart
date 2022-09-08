import 'package:flutter/material.dart';
import 'package:flutter_demo/second_page.dart';

class DemoNavigationScreen extends StatelessWidget {
  const DemoNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>  SecondScreen(param: 'zxcvzxcv',)));
          },
          child: const Text('Open screen 2')),
    );
  }
}

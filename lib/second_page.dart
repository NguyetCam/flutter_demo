import 'package:flutter/material.dart';
import 'package:flutter_demo/third_page.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key, required this.param}) : super(key: key);

  final String param;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int bully = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text('This is second page with param: $bully')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            bully++;
          });
          print(bully);
          if (bully == 5) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen(
                        param: bully),
                  ),
                )
                .then((value){
                  setState(() {
                    bully=value;
                  });
            });
          }
        },
      ),
    );
  }
}

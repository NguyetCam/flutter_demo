import 'package:flutter/material.dart';

class DemoListViewWidget extends StatefulWidget {
  const DemoListViewWidget({Key? key}) : super(key: key);

  @override
  State<DemoListViewWidget> createState() => _DemoListViewWidgetState();
}

class _DemoListViewWidgetState extends State<DemoListViewWidget> {
  int i = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: increaseItem,
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: i,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      print('clicked index: $index');
                    },
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Row(
                          children: [
                            const Icon(Icons.ac_unit),
                            Text('data $index',style: TextStyle(
                                color: index%2==0?Colors.red:Colors.cyan
                            ),)
                          ],
                        )));
              }),
        ),
      ),
    );
  }

  void increaseItem() {
    setState(() {
      i++;
      print(i);
    });
  }
}

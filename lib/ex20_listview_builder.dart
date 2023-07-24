import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex20 extends StatelessWidget {
  const Ex20({Key? key}) : super(key: key);
  static const colorList = <Color>[Colors.red, Colors.yellow, Colors.pink, Colors.blue];
  static const iconList = <IconData>[Icons.ac_unit_sharp, Icons.done_all, Icons.verified_user, Icons.downhill_skiing];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(iconList[index], color: colorList[index]),
              title: Text("Index = $index"),
            );
          },
        ));
  }
}

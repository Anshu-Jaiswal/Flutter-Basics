import 'package:flutter/material.dart';

class Ex9 extends StatelessWidget {
  const Ex9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.access_alarms_sharp),
        backgroundColor: Colors.pink,
        onPressed: () {},
        label: Text("Button"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Ex10 extends StatelessWidget {
  const Ex10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            child: Text(
              "Let's Nacho",
              style: TextStyle(fontSize: 28),
            ),
            color: Colors.pinkAccent),
      ),
    );
  }
}

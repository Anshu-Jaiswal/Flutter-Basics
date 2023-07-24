import 'package:flutter/material.dart';

class Ex2 extends StatelessWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text("How You Doing",
            style: TextStyle(
              color: Colors.yellowAccent,
              fontSize: 40,
            )),
      ),
    );
  }
}

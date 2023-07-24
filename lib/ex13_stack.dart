import 'package:flutter/material.dart';

class Ex13 extends StatelessWidget {
  const Ex13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.topRight,
        // in stack order is important used to draw/position multiple widget one over other on eachother
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.teal,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.pink,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

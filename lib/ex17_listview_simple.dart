import 'package:flutter/material.dart';

class Ex17 extends StatelessWidget {
  const Ex17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < 10; i++)
            Card(
                color: Colors.pinkAccent,
                child: FlutterLogo(
                  size: 100,
                ))
        ],
      ),
    );
  }
}

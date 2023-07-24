import 'package:flutter/material.dart';

class Ex12 extends StatelessWidget {
  const Ex12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.pinkAccent,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.up,
            mainAxisSize: MainAxisSize.min,
            children: [
              FlutterLogo(size: 40),
              FlutterLogo(size: 100),
              FlutterLogo(size: 200),
            ]),
      ),
    );
  }
}

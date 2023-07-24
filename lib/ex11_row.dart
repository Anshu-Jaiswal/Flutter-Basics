import 'package:flutter/material.dart';

class Ex11 extends StatelessWidget {
  const Ex11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.pinkAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            textDirection: TextDirection.rtl,
            children: [
              FlutterLogo(size: 40),
              FlutterLogo(size: 100),
              FlutterLogo(size: 200),
            ],
          ),
        ));
  }
}

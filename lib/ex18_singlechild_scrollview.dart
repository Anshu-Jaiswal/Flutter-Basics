import 'package:flutter/material.dart';

class Ex18 extends StatelessWidget {
  const Ex18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        // by default vertical scrollable
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              Card(
                  color: Colors.pinkAccent,
                  child: FlutterLogo(
                    size: 100,
                  ))
          ],
        ),
      ),
    );
  }
}

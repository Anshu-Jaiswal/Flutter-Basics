import 'package:flutter/material.dart';

class Ex15 extends StatelessWidget {
  const Ex15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 30,
              height: 250,
              width: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green[300],
                child: Text(
                  'Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 60,
              width: 250,
              height: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red[400],
                child: Text(
                  'Red',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 90,
              width: 250,
              height: 250,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.indigo[300],
                child: Text(
                  'Purple',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

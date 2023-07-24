import 'package:flutter/material.dart';

class Ex16 extends StatelessWidget {
  const Ex16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.white10,
              height: 200,
              width: 250,
              alignment: Alignment.center,
              child: Icon(Icons.favorite, color: Colors.pink, size: 200),
            ),
            Positioned(
              top: 60,
              left: 35,
              child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                child: Text("Alphi", style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
            ),
            Positioned(
                left: 110,
                top: 60,
                child: Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text("Darla", style: TextStyle(fontSize: 24, color: Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}

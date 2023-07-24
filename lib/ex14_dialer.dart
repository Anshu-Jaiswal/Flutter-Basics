import 'package:flutter/material.dart';

class Ex14 extends StatelessWidget {
  const Ex14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 40,
                color: Colors.black12,
              ),
              Icon(
                Icons.phone,
                size: 80,
                color: Colors.black12,
              ),
              Icon(
                Icons.watch_later_outlined,
                size: 40,
                color: Colors.black12,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "NO ONE IS ON YOUR SPEED DIAL YET",
            style: TextStyle(fontSize: 14, color: Colors.black38),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "ADD A FAVORITE",
            style: TextStyle(fontSize: 20, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}

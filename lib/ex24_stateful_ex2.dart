import 'package:flutter/material.dart';

class Ex24 extends StatefulWidget {
  const Ex24({this.value = 0, Key? key}) : super(key: key);
  final int value;

  @override
  State<Ex24> createState() => _Ex24State();
}

class _Ex24State extends State<Ex24> {
  int count = 0;

  @override
  void initState() {
    // this function used to  initialize and access parent class variable
    super.initState();
    count = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Text(
          "Current Value = $count",
          style: TextStyle(fontSize: 40),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ));
  }
}

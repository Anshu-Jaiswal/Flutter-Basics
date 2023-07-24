import 'package:flutter/material.dart';

class BasicParams extends StatelessWidget {
  const BasicParams(this.name, this.age, {Key? key}) : super(key: key);
  final String name;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Name is $name Age is $age"),
    );
  }
}

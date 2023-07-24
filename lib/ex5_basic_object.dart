import 'package:flutter/material.dart';
import 'package:flutter_basic/user.dart';

class BasicObject extends StatelessWidget {
  const BasicObject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = User("kitty", 8);
    return Scaffold(
      appBar: AppBar(),
      body: Text("Name is ${user.name} Age is ${user.age}"),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basic/user.dart';

class PassingUser extends StatelessWidget {
  const PassingUser(this.user, {Key? key}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Name is ${user.name} Age is ${user.age} "),
    );
  }
}

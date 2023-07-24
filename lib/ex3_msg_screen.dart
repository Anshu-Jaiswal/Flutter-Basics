import 'package:flutter/material.dart';

class MsgScreen extends StatelessWidget {
  const MsgScreen(this.label, {Key? key}) : super(key: key);
  final String label;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          label,
        ),
      ),
    );
  }
}

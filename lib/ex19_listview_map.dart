import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex19 extends StatelessWidget {
  const Ex19({Key? key}) : super(key: key);
  static const colors = <Color>[Colors.red, Colors.yellow, Colors.pink, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        // children: [
        //   for (var c in colors)
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: c,
        //     )
        // ],
        children: colors
            .map((c) => Container(
                  height: 100,
                  width: 100,
                  color: c,
                ))
            .toList(),
      ),
    );
  }
}

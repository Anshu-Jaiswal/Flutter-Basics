import 'package:flutter/material.dart';
// Exclusive State :
// used to create independent widget with independent state using single widget

class Ex25 extends StatelessWidget {
  const Ex25({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CounterTile("1st Counter", Colors.red),
          CounterTile("2nd Counter", Colors.yellow),
        ],
      ),
    );
  }
}

class CounterTile extends StatefulWidget {
  const CounterTile(this.label, this.color, {Key? key}) : super(key: key);
  final String label;
  final Color color;

  @override
  State<CounterTile> createState() => _CounterTileState();
}

class _CounterTileState extends State<CounterTile> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("current value = $count"),
      subtitle: Text(widget.label),
      trailing: IconButton(
        onPressed: () {
          setState(() => count++);
        },
        icon: Icon(Icons.add),
      ),
      tileColor: widget.color,
    );
  }
}

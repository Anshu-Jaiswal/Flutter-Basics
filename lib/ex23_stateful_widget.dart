import 'package:flutter/material.dart';

class Ex23 extends StatefulWidget {
  const Ex23({Key? key}) : super(key: key);

  @override
  State<Ex23> createState() => _Ex23State();
}

class _Ex23State extends State<Ex23> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("count =$count"),
        actions: [
          IconButton(onPressed: () => setState(() => count = 0), icon: Icon(Icons.settings_backup_restore)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          count++;
        }),
        child: Icon(Icons.add),
      ),
    );
  }
}

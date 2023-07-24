import 'package:flutter/material.dart';
import 'package:flutter_basic/ex28_future.dart';

class Ex29 extends StatelessWidget {
  const Ex29({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Future Builder  return single object "),
      ),
      body: FutureBuilder<Human>(
        future: makeHuman("Anshika"),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          switch (snapshot.connectionState) {
            case ConnectionState.none:

            case ConnectionState.waiting:

            case ConnectionState.active:
              return CircularProgressIndicator();

            case ConnectionState.done:
              if (snapshot.hasData) {
                final h = snapshot.requireData;
                return buildBody(h);
              } else {
                return Text("Error");
              }
          }
        },
      ),
    );
  }

  Center buildBody(Human human) {
    return Center(
        child: Text(
      "${human.name}",
      style: TextStyle(fontSize: 40),
    ));
  }
}

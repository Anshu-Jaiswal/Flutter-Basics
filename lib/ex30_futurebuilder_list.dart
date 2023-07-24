import 'package:flutter/material.dart';
import 'package:flutter_basic/ex28_future.dart';

class Ex30 extends StatelessWidget {
  const Ex30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Future Builder  return list "),
      ),
      body: FutureBuilder<List<Human>>(
        future: makeHumans(["Anshika", "Aditi", "Arush", "Yash"]),
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

  Widget buildBody(List<Human> list) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final h = list[index];
          return ListTile(
            title: Text(h.name),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: list.length);
  }
}

Future<List<Human>> makeHumans(List<String> names) async {
  await Future.delayed(Duration(seconds: 4));
  var list = <Human>[];
  for (int i = 0; i < names.length; i++) {
    list.add(Human(names[i]));
  }
  return list;
}

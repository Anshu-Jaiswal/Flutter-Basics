import 'package:flutter/material.dart';

class FutureBuilderExample extends StatelessWidget {
  const FutureBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Future Builder")),
      body: FutureBuilder<int>(
        future: calcSum(4, 2),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              return Center(
                  child: Text("ans: ${snapshot.requireData}",
                      style: const TextStyle(fontSize: 50)));
          }
        },
      ),
    );
  }
}

Future<int> calcSum(int a, int b) async {
  print('calculating..');
  await Future.delayed(const Duration(seconds: 4));
  return a + b;
}

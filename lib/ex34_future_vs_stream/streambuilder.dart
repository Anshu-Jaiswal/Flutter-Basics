import 'package:flutter/material.dart';

class StreamBuilderExample extends StatelessWidget {
  const StreamBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stream Builder")),
      body: StreamBuilder<int>(
        stream: getValues(5),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
              return Center(
                  child: Text("ans: ${snapshot.requireData}",
                      style: const TextStyle(fontSize: 50)));
            case ConnectionState.done:
              return const Center(child: Text("Completed"));
          }
        },
      ),
    );
  }
}

Stream<int> getValues(int limit) async* {
  await Future.delayed(const Duration(seconds: 4));
  for (int i = 1; i <= limit; i++) {
    yield i;
    await Future.delayed(const Duration(seconds: 1));
  }
}

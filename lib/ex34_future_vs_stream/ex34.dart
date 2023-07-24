import 'package:flutter/material.dart';
import 'package:flutter_basic/ex34_future_vs_stream/futurebuilder.dart';
import 'package:flutter_basic/ex34_future_vs_stream/streambuilder.dart';

class Ex34App extends StatelessWidget {
  const Ex34App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const FutureVsStream(),
        "/future": (context) => const FutureBuilderExample(),
        "/stream": (context) => const StreamBuilderExample()
      },
      builder: (context, child) => SafeArea(child: child!),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FutureVsStream extends StatelessWidget {
  const FutureVsStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Future Vs Stream")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, "/future"),
            child: const Text("Future Builder"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, "/stream"),
            child: const Text("Stream Builder"),
          ),
        ],
      ),
    );
  }
}

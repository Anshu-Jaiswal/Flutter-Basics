import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: App()),
      debugShowCheckedModeBanner: false,
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _sw = Stopwatch();
  bool _isRunning = false;
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stopwatch")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${_sw.elapsed.inMinutes} minutes\n${_sw.elapsed.inSeconds % 60} seconds",
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton.icon(
              onPressed: _isRunning ? _pauseTimer : _startTimer,
              icon: Icon(_isRunning ? Icons.pause : Icons.play_arrow),
              label: Text(_isRunning ? "Pause" : "Start"),
            ),
            ElevatedButton.icon(
                onPressed: _resetTimer,
                icon: const Icon(Icons.restore),
                label: const Text("Reset")),
          ],
        ),
      ),
    );
  }

  _startTimer() {
    setState(() => _isRunning = true);
    _sw.start();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => setState(() {}));
  }

  _pauseTimer() {
    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _sw.stop();
    });
  }

  _resetTimer() {
    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _sw.stop();
      _sw.reset();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _sw.stop();
    super.dispose();
  }
}

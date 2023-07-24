import 'package:flutter/material.dart';
import 'package:flutter_basic/provider/ex2/theme_provider.dart';
import 'package:flutter_basic/provider/ex3/color_provider.dart';
import 'package:flutter_basic/provider/ex4/cart.dart';
import 'package:flutter_basic/provider/ex4/shopping_main.dart';
import 'package:provider/provider.dart';

import 'ex32_todo/todo_ui.dart';

void main() {
  // runApp(const StopWatchApp()); // for stopwatch  else MyApp
  runApp(TodoPage()); // for stopwatch  else MyApp
  // runApp(const MyApp()); // for stopwatch  else MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => ColorProvider(Colors.red)),
        ChangeNotifierProvider(create: (context) => ItemCart()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: context.watch<ThemeProvider>().isDark ? ThemeMode.dark : ThemeMode.light,
            home: SafeArea(child: ShoppingMain()),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}

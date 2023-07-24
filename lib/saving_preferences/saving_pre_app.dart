import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pref_theme_provider.dart';
import 'splash_screen.dart';

class PrefApp extends StatelessWidget {
  const PrefApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PrefThemeProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: context.watch<PrefThemeProvider>().darkThemeActive
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const SafeArea(child: SplashScreen()),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basic/saving_preferences/pref_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pref_home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadUserPrefs().whenComplete(
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const PrefHomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }

  // loadUserPreferences()  is loading data while splash screen is displayed.

  Future<void> loadUserPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool("DARK_MODE_SETTING") ??
        false; // reading data from shared preferences by getBool()
    if (mounted) {
      context.read<PrefThemeProvider>().darkThemeActive = isDark;
    }
  }
}

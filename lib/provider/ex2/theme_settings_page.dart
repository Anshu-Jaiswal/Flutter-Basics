import 'package:flutter/material.dart';
import 'package:flutter_basic/provider/ex2/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeSettingPage extends StatelessWidget {
  const ThemeSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting")),
      body: SwitchListTile(
        title: Text(context.watch<ThemeProvider>().isDark
            ? "Dark Mode Active"
            : "Light Mode Active"),
        value: context.watch<ThemeProvider>().isDark,
        onChanged: (bool value) => context.read<ThemeProvider>().dark = value,
      ),
    );
  }
}

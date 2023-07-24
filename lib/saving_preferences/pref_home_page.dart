import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pref_theme_provider.dart';

class PrefHomePage extends StatelessWidget {
  const PrefHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrefSettingsPage()));
          },
          child: Text("Settings"),
        ),
      ),
    );
  }
}

class PrefSettingsPage extends StatelessWidget {
  const PrefSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting")),
      body: SwitchListTile(
        title: Text(context.watch<PrefThemeProvider>().darkThemeActive
            ? "Dark Mode Active"
            : "Light Mode Active"),
        value: context.watch<PrefThemeProvider>().darkThemeActive,
        onChanged: (bool value) {
          context.read<PrefThemeProvider>().darkThemeActive = value;
          SharedPreferences.getInstance().then((prefs) => prefs.setBool(
              "DARK_MODE_SETTING", value)); // write data in shared preferences
        },
      ),
    );
  }
}

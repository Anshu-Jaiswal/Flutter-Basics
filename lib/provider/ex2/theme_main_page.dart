import 'package:flutter/material.dart';
import 'package:flutter_basic/provider/ex2/theme_settings_page.dart';

class ThemeMainPage extends StatelessWidget {
  const ThemeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Theme Demo via Provider"),
          actions: [_goToSettingsPage(context)]),
    );
  }

  _goToSettingsPage(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ThemeSettingPage(),
            ));
      },
      icon: Icon(Icons.settings),
    );
  }
}

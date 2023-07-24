import 'package:flutter/material.dart';

class Ex22 extends StatelessWidget {
  const Ex22({Key? key}) : super(key: key);
  static final settings = [
    Setting(Icons.fingerprint,
        heading: "Use Fingerprint", subheading: "Unlock with your fingerprint", color: Colors.purpleAccent),
    Setting(Icons.add_alert,
        heading: "Set Do Not Disturb rules", subheading: "Limit sounds & vibrations a certain times"),
    Setting(Icons.signal_wifi_4_bar_sharp,
        heading: "Network & Internet", subheading: "Wi-Fi, mobile,data usage, hotspot", color: Colors.blue),
    Setting(Icons.devices_other_outlined,
        heading: "Connected device", subheading: "Bluetooth, Cast, NFC", color: Colors.teal),
    Setting(Icons.apps_outlined,
        heading: "App & notification", subheading: "Permission, default apps", color: Colors.amber),
    Setting(Icons.battery_std_sharp, heading: "Battery", subheading: "100", color: Colors.brown),
    Setting(Icons.brightness_6_sharp, heading: "Display", subheading: "Wallpaper, sleep,font size", color: Colors.red),
    Setting(Icons.volume_up,
        heading: "Sound", subheading: "Volume, vibration, Do Not Disturb", color: Colors.pinkAccent),
    Setting(Icons.storage, heading: "Storage", subheading: "26% used - 5.93GB free", color: Colors.amber),
    Setting(Icons.lock, heading: "Security & Location", subheading: "Screen lock, fingerprint", color: Colors.amber),
    Setting(Icons.account_box_rounded,
        heading: "User & accounts", subheading: "Current user:Owner", color: Colors.redAccent),
    Setting(
      Icons.accessibility_sharp,
      heading: "Accessibility",
      subheading: "Screen readers, display, interaction controls",
    ),
    Setting(Icons.g_mobiledata_rounded,
        heading: "Google", subheading: "Services & preferences", color: Colors.deepPurple),
    Setting(Icons.error_outline_sharp,
        heading: "System", subheading: "Languages, time,backup,updates", color: Colors.deepOrange),
  ];
  final useColor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final s = settings[index];
          return ListTile(
            leading: Icon(
              s.icon,
              color: useColor ? s.color : null,
            ),
            title: Text(s.heading),
            subtitle: Text(s.subheading),
            trailing: IconButton(
              onPressed: () {
                print("Clicked On ${s.heading}");
              },
              icon: Icon(Icons.keyboard_arrow_right),
            ),
          );
        },
        itemCount: settings.length,
      ),
    );
  }
}

class Setting {
  final String heading, subheading;
  final IconData icon;
  final Color color;

  Setting(this.icon,
      {required this.heading,
      required this.subheading,
      this.color = Colors.black}); // {} means order of data is not imp and required means it is mandatory
}

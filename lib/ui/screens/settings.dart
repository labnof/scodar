import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement settings screen
    return Scaffold(
        appBar: AppBar(
      title: const Text('Settings'),
    ));
  }
}

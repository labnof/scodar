import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement about screen
    return Scaffold(
        appBar: AppBar(
      title: const Text('About'),
    ));
  }
}

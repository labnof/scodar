import 'package:flutter/material.dart';
import 'package:scodar/ui/screens/screens.dart';
import 'package:scodar/ui/theme.dart';

import 'home.dart';

void main() {
  runApp(const Scordar());
}

class Scordar extends StatelessWidget {
  const Scordar({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Scodar',
      theme: ScodarTheme.light(),
      routes: {
        "/": (context) => const Home(),
        "/credit": (context) => const CreditScreen(),
        "/settings": (context) => const SettingsScreen(),
        "/history": (context) => const HistoryScreen(),
        "/balance": (context) => const BalanceScreen(),
        "/about": (context) => const AboutScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scodar/ui/screens/about.dart';
import 'package:scodar/ui/widgets/widgets.dart';
import 'package:scodar/ui/screens/screens.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String accountName = 'Babatunde.Anafi';
  String accountEmail = 'babatunde.o.anafi@gmail.com';

  // Screens accessible from bottom navigation
  static const List<Widget> _screens = [
    ScanScreen(),
    BalanceScreen(),
    CreditScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 84,
          title: const Text('SCODAR'),
          leading: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Image(image: AssetImage('assets/images/app_bar_icon.png')),
          )),
      body: _screens[_selectedIndex],
      bottomNavigationBar: ScodarBottomNavigationBar(
        index: _selectedIndex,
        onTap: _onItemTapped,
      ),
      endDrawer:
          ScodarDrawer(accountName: accountName, accountEmail: accountEmail),
    );
  }
}

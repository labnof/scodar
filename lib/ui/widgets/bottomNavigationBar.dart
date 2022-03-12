import 'package:flutter/material.dart';

class ScodarBottomNavigationBar extends StatelessWidget {
  const ScodarBottomNavigationBar(
      {Key? key, required this.index, required this.onTap})
      : super(key: key);
  final int index;
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: onTap, currentIndex: index, items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        tooltip: 'Scan Card',
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_balance_wallet),
        tooltip: 'Check Balance',
        label: 'Balance',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.credit_card),
        tooltip: 'Buy credit',
        label: 'Credit',
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.history), tooltip: 'History', label: 'History'),
    ]);
  }
}

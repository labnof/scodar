import 'package:flutter/material.dart';
import 'package:scodar/ui/theme.dart';

class ScodarDrawer extends StatelessWidget {
  const ScodarDrawer({
    Key? key,
    required this.accountName,
    required this.accountEmail,
  }) : super(key: key);
  final String accountName;
  final String accountEmail;

  @override
  Widget build(BuildContext context) {
    const kDrawerListTileSize = 24.0;
    const kCurrentAccountPicture = 96.0;

    return Drawer(
      backgroundColor: ScodarTheme.primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration:
                  const BoxDecoration(color: ScodarTheme.secondaryColor),
              accountName: Text(
                accountName,
                style: const TextStyle(color: ScodarTheme.primaryColor),
              ),
              accountEmail: Text(
                accountEmail,
                style: const TextStyle(color: ScodarTheme.primaryColor),
              ),
              currentAccountPicture: const Icon(
                Icons.account_circle,
                color: ScodarTheme.primaryColor,
                size: kCurrentAccountPicture,
              )),
          ListTile(
            leading: const Icon(Icons.home,
                color: ScodarTheme.secondaryColor, size: kDrawerListTileSize),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings,
                color: ScodarTheme.secondaryColor, size: kDrawerListTileSize),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.lightbulb,
                color: ScodarTheme.secondaryColor, size: kDrawerListTileSize),
            title: const Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }

  //Todo: Account profile and service providers
  Widget accountProfile(
      {Image? profilePicture, String? sim1 = 'SIM1', String? sim2 = 'SIM2'}) {
    return Row(
      children: [
        const CircleAvatar(
            child: Icon(
          Icons.account_circle,
          color: ScodarTheme.primaryColor,
          size: 96,
        )),
        const SizedBox(
          width: 20.0,
        ),
        Column(
          children: [
            Text('Active Providers',
                style: ScodarTheme.lightTextTheme.subtitle2),
            Text(
              sim1!,
              style: ScodarTheme.lightTextTheme.bodyText1,
            ),
            Text(
              sim2!,
              style: ScodarTheme.lightTextTheme.bodyText1,
            )
          ],
        )
      ],
    );
  }
}

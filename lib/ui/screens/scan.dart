import 'package:flutter/material.dart';
import 'package:scodar/ui/theme.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Place the camera over the voucher',
                style: ScodarTheme.lightTextTheme.subtitle2),
            const SizedBox(height: 12),
            Container(
              width: 300,
              height: 54,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 200,
            ),
            IconButton(
                iconSize: 64,
                color: ScodarTheme.secondaryColor,
                onPressed: () {},
                icon: const Icon(Icons.highlight)),
            const SizedBox(
              height: 5,
            ),
            Text('Press the touch for more light',
                style: ScodarTheme.lightTextTheme.subtitle2),
          ],
        ),
      ),
    );
  }
}

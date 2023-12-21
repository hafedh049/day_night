import 'package:flutter/material.dart';

class DayNightSwitcher extends StatefulWidget {
  const DayNightSwitcher({super.key});

  @override
  State<DayNightSwitcher> createState() => _DayNightSwitcherState();
}

class _DayNightSwitcherState extends State<DayNightSwitcher> {
  bool _day = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_day ? "DAY" : "NIGHT", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, letterSpacing: 2)),
            const SizedBox(height: 20),
            Switch(value: _day, onChanged: (bool value) => ,),
          ],
        ),
      ),
    );
  }
}

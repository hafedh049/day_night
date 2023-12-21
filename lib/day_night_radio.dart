import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
            Animate(
              effects: <Effect>[FadeEffect(duration: 500.ms)],
              child: Text(
                _day ? "DAY" : "NIGHT",
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            const SizedBox(height: 20),
            Switch(
              value: _day,
              activeColor: Colors.yellowAccent,
              activeThumbImage: const AssetImage("assets/day.jpg"),
              activeTrackColor: Colors.grey,
              inactiveThumbColor: Colors.blue,
              inactiveThumbImage: const AssetImage("assets/night.jpeg"),
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) => setState(() => _day = value),
            ),
          ],
        ),
      ),
    );
  }
}

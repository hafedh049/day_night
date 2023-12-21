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
              key: ValueKey<bool>(_day),
              effects: <Effect>[FadeEffect(duration: 500.ms), ShakeEffect(duration: 500.ms)],
              child: Text(_day ? "DAY" : "NIGHT", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, letterSpacing: 2)),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => setState(() => _day = !_day),
              child: AnimatedContainer(
                duration: 500.ms,
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage("assets/${_day ? 'day.jpg' : 'night.jpeg'}"), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

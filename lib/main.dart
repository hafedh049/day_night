import 'package:day_night/day_night_radio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Animate.restartOnHotReload = true;
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(theme: ThemeData.dark(), home: const DayNightSwitcher(), debugShowCheckedModeBanner: false);
}

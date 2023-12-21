import 'package:flutter/material.dart';

class DayNightRadio extends StatefulWidget {
  const DayNightRadio({super.key});

  @override
  State<DayNightRadio> createState() => _DayNightRadioState();
}

class _DayNightRadioState extends State<DayNightRadio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}

import 'package:fl_lapse_loader/screens/home_page.dart';
import 'package:fl_lapse_loader/screens/results_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LapseLoader());
}

class LapseLoader extends StatelessWidget {
  const LapseLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lapse Loader",
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'results': (context) => ResultsScreen()
      },
      home: HomePage(),
    );
  }
}

import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}

// Learning
// stateless widgets are immutable
// so when updates happen on a widget, the widget is destroyed and a new one is created
// Difference final vs const
// both are immutable but the value in the const must be worked out at the time of the compilation
// for example we can't have const date = DateTime.now()

// Expanded used for re-used components can create problems

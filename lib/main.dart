import 'package:bimi_calc/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bimi_calc/input_page.dart';
import 'result_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => InputPage(),
        '/result_page': (context) => ResultPage(),
      },
    );
  }
}

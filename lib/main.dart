import 'package:bmi/BMI/input_page.dart';
import 'package:bmi/BMI/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const BMICalculator(),
  );
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E22),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E22),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        '/result/': (context) =>  ResultPage(result: double.parse(resultBMI!)),
      },
    );
  }
}

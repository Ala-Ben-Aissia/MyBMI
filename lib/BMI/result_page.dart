import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESULT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              result < 18.5
                  ? 'Underweight'
                  : result < 24.9
                      ? 'Normalweight'
                      : result < 29.9
                          ? 'Overweight'
                          : 'Obesity',
              style: const TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$result',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 120,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              result < 18.5
                  ? 'You have a low body weight .. You can eat a bit more.'
                  : result < 24.9
                      ? 'You have a normal body weight .. Great job'
                      : result < 29.9
                          ? 'You have a heigh body weight .. Try to exercise more.'
                          : 'Sorry .. You are FAT',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

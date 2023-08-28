import 'dart:math';

class CalcBMI {
  int weight;
  int height;
  CalcBMI({
    required this.weight,
    required this.height,
  });

  String calculate() {
    return (weight/pow(height/100, 2)).toStringAsFixed(1);
  }
}

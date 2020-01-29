import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double bmi;

  CalculatorBrain({this.height, this.weight});
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}

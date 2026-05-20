class ArithmeticModel {
  double first;
  double second;

  ArithmeticModel({required this.first, required this.second});

  double add() {
    return first + second;
  }

  double subtract() {
    return first - second;
  }

  double multiply() {
    return first * second;
  }

  double divide() {
    return first / second;
  }
}

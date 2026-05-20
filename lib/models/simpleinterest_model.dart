class SimpleInterestModel {
  int principal;
  int rate;
  int time;

  SimpleInterestModel({
    required this.principal,
    required this.rate,
    required this.time,
  });

  double simpleInterest() {
    return (principal * rate * time) / 100;
  }
}

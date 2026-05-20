import 'package:flutter/material.dart';
import 'package:screen/models/arithmetic_model.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController firstController = TextEditingController();

  final TextEditingController secondController = TextEditingController();

  double result = 0;

  void calculate(String operation) {
    final model = ArithmeticModel(
      first: double.parse(firstController.text),
      second: double.parse(secondController.text),
    );

    setState(() {
      switch (operation) {
        case '+':
          result = model.add();
          break;

        case '-':
          result = model.subtract();
          break;

        case '*':
          result = model.multiply();
          break;

        case '/':
          result = model.divide();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Arithmetic Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter First Number",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Second Number",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => calculate('+'),
                  child: const Text("Add"),
                ),

                ElevatedButton(
                  onPressed: () => calculate('Substract'),
                  child: const Text("Sub"),
                ),

                ElevatedButton(
                  onPressed: () => calculate('*'),
                  child: const Text("Mult"),
                ),

                ElevatedButton(
                  onPressed: () => calculate('/'),
                  child: const Text("Divide"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Text(
              "Result = $result",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

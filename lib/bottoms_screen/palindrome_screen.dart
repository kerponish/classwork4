import 'package:flutter/material.dart';
import 'package:screen/models/palindrome_model.dart';

class PalindromeScreen extends StatelessWidget {
  PalindromeScreen({super.key});

  final numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Palindrome check",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: numberController,
                decoration: InputDecoration(
                  labelText: "Enter a number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter number";
                  }
                  return null;
                },
              ),

              SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final model = PalindromeModel(
                        number: int.parse(numberController.text),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Your entered number is ${model.isPalindrome() ? '' : 'not '}Palindrome.",
                          ),
                        ),
                      );
                    }
                  },
                  child: Text("Check Palindrome"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

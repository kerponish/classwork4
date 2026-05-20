import 'package:flutter/material.dart';
import 'package:screen/bottoms_screen/arithmetic_screen.dart';
import 'package:screen/bottoms_screen/armstrong_screen.dart';
import 'package:screen/bottoms_screen/palindrome_screen.dart';
import 'package:screen/bottoms_screen/simpleinterest_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  List<Widget> lstBottomScreen = [
    const ArithmeticScreen(),
    ArmstrongScreen(),
    PalindromeScreen(),
    SimpleInterestScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'), centerTitle: true),
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Arith'),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'Arms'),
          BottomNavigationBarItem(icon: Icon(Icons.palette), label: 'Palin'),
          BottomNavigationBarItem(
            icon: Icon(Icons.compost_rounded),
            label: 'SI',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 113, 130, 139),
        selectedItemColor: const Color.fromARGB(255, 19, 18, 18),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

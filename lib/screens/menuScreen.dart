import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';
import 'package:pasto_felice_mobile/widgets/navbar.dart';
import 'package:pasto_felice_mobile/widgets/screenTitle.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<String> weekDays = [
    'LUN',
    'MAR',
    'MER',
    'GIO',
    'VEN',
    'SAB',
    'DOM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 75),
            Expanded(
                child: Column(children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: ScreenTitle(),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                      color: whites.shade300,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 30,
                          offset: const Offset(0, 4),
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                        child: SizedBox(
                      child: Row(),
                    )),
                  ),
                ),
              ),
            ])),
            const Navbar()
          ],
        ),
      ),
    );
  }
}

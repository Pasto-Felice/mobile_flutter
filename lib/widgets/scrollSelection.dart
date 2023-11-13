import 'package:flutter/material.dart';
import 'colors.dart';

class ScrollSelection extends StatefulWidget {
  const ScrollSelection({super.key});

  @override
  State<ScrollSelection> createState() => _ScrollSelectionState();
}

class _ScrollSelectionState extends State<ScrollSelection> {
  final List<String> weekDays = [
    'LUN',
    'MAR',
    'MER',
    'GIO',
    'VEN',
    'SAB',
    'DOM',
  ];
  int currentDay = 3;

  PageController _pageController = PageController(viewportFraction: 0.2);
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: (currentDay + 1000 / 2).toInt(),
      viewportFraction:
          0.2, // Imposta quanti giorni sono visibili contemporaneamente
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              int adjustedIndex = index % weekDays.length;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentDay = adjustedIndex;
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease,
                    );
                  });
                },
                child: Center(
                    child: Text(
                  weekDays[adjustedIndex],
                  style: TextStyle(
                      color: adjustedIndex == currentDay
                          ? primary.shade500
                          : blacks.shade500),
                )),
              );
            }));
  }
}

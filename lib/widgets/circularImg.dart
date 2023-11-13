import 'package:flutter/material.dart';
import 'colors.dart';
class CircularImg extends StatelessWidget {
  const CircularImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 165,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/img1.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(150.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 20,
            offset: const Offset(0, 4),
          )
        ],
        border: Border.all(
          color: whites.shade300,
          width: 4.0,
        ),
      ),
    );
  }
}

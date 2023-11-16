import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/boxShadow.dart';
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
        boxShadow: [CustomShadow.primaryShadow],
        border: Border.all(
          color: whites.shade300,
          width: 4.0,
        ),
      ),
    );
  }
}

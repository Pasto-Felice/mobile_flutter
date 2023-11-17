import 'package:flutter/material.dart';

class CustomShadow {
  static final primaryShadow = BoxShadow(
      color: Colors.black.withOpacity(0.25),
      spreadRadius: 5,
      blurRadius: 10,
      offset: const Offset(0, 4));
}

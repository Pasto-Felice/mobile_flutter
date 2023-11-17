import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasto_felice_mobile/screens/menuScreen.dart';
import 'package:pasto_felice_mobile/screens/startPage.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color defaultTextColor = blacks.shade400;
    return MaterialApp(
        title: 'Pasto Felice',
        theme: ThemeData(
          fontFamily: GoogleFonts.openSans().fontFamily,
          textTheme: TextTheme(
            displayLarge: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 36,
                fontFamily: GoogleFonts.raleway().fontFamily,
                color: defaultTextColor),
            displayMedium: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color: defaultTextColor,
                fontFamily: GoogleFonts.raleway().fontFamily),
            displaySmall: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: defaultTextColor),
            bodyLarge: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: defaultTextColor),
            bodyMedium: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: defaultTextColor),
            labelLarge: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                fontFamily: GoogleFonts.inter().fontFamily,
                color: defaultTextColor),
            labelMedium: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: defaultTextColor),
            bodySmall: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: defaultTextColor),
            labelSmall: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: defaultTextColor),
          ),
          useMaterial3: true,
        ),
        home: const StartPage());
  }
}

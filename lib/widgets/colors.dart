import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFFFF5E6),
  100: Color(0xFFFFE7C0),
  200: Color(0xFFFFD797),
  300: Color(0xFFFFC76D),
  400: Color(0xFFFFBB4D),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFFFFA829),
  700: Color(0xFFFF9F23),
  800: Color(0xFFFF961D),
  900: Color(0xFFFF8612),
});
const int _primaryPrimaryValue = 0xFFFFAF2E;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFE0C6),
  700: Color(0xFFFFD2AD),
});
const int _primaryAccentValue = 0xFFFFFCF9;

const MaterialColor secondary =
    MaterialColor(_secondaryPrimaryValue, <int, Color>{
  50: Color(0xFFFEEFE9),
  100: Color(0xFFFCD6C7),
  200: Color(0xFFFABBA2),
  300: Color(0xFFF89F7C),
  400: Color(0xFFF78B60),
  500: Color(_secondaryPrimaryValue),
  600: Color(0xFFF46E3E),
  700: Color(0xFFF26335),
  800: Color(0xFFF0592D),
  900: Color(0xFFEE461F),
});
const int _secondaryPrimaryValue = 0xFFF57644;

const MaterialColor secondaryAccent =
    MaterialColor(_secondaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_secondaryAccentValue),
  400: Color(0xFFFFC8BE),
  700: Color(0xFFFFB3A4),
});
const int _secondaryAccentValue = 0xFFFFF3F1;

const MaterialColor blacks = MaterialColor(_primaryBlacksValue, <int, Color>{
  300: Color(0xFF454545),
  400: Color(_primaryBlacksValue),
  500: Color(0xFF21201F),
});
const int _primaryBlacksValue = 0xFF373635;

const MaterialColor whites = MaterialColor(_primaryWhitesValue, <int, Color>{
  300: Color(0xFFFFFFFF),
  400: Color(_primaryWhitesValue),
  500: Color(0xFFA0AEC0),
});
const int _primaryWhitesValue = 0xFFE2E8F0;

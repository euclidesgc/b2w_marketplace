import 'package:b2w_marketplace/app/shared/generate_material_color.dart';
import 'package:flutter/material.dart';

final ThemeData b2wLightThemeData = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: generateMaterialColor(Colors.black),
  scaffoldBackgroundColor: Color(0xffF2F2F2),
  accentColor: Color(0xff3FEDD4),

  // Define the default font family.
  fontFamily: 'Montserrat',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline6: TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.bold,
    ),
  ),
);

// ThemeData(
//   backgroundColor: Colors.red,
//   scaffoldBackgroundColor: Color(0xffF2F2F2),
//   primarySwatch: generateMaterialColor(Colors.black),
//   primaryColor: generateMaterialColor(Colors.black),
//   accentColor: ACCENT_COLOR,
//   fontFamily: "Montserrat",
//   textTheme: TextTheme(
//     button: TextStyle(
//       fontSize: 16,
//       fontFamily: "Montserrat",
//     ),
//     headline1: TextStyle(
//       color: Colors.red,
//       fontWeight: FontWeight.bold,
//       fontSize: 18,
//       fontFamily: "Montserrat",
//     ),
//     bodyText1: TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.bold,
//       fontSize: 18,
//       fontFamily: "Montserrat",
//     ),
//   ),
// );

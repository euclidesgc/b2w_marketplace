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
    button: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    headline6: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    bodyText2: TextStyle(fontSize: 18),
    
  ),
);

import 'package:b2w_marketplace/app/shared/generate_material_color.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

final ThemeData b2wThemeData = ThemeData(
  backgroundColor: Colors.red,
  scaffoldBackgroundColor: Color(0xffF2F2F2),
  primarySwatch: generateMaterialColor(Colors.black),
  primaryColor: generateMaterialColor(Colors.black),
  accentColor: ACCENT_COLOR,
  fontFamily: "Montserrat",
  textTheme: TextTheme(button: TextStyle(fontSize: 16)),
);

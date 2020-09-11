import 'package:b2w_marketplace/app/shared/b2w_ThemeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: b2wLightThemeData,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}

import 'package:e_commerce/routs/routs.dart';
import 'package:e_commerce/screens/splash/splash_creen.dart';
import 'package:e_commerce/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: buildTheme(),
      initialRoute: SplashScreen.routName,
      routes: routes,
    );
  }
}

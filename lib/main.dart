import 'package:e_commerce/routs/routs.dart';
import 'package:e_commerce/screens/splash/splash_creen.dart';
import 'package:flutter/material.dart';
import 'config/constants.dart';

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

  ThemeData buildTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: kTextColor,
        ),
        bodyText2: TextStyle(
          color: kTextColor,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

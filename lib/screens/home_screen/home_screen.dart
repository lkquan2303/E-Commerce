import 'package:flutter/material.dart';
import 'components/body_home_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHomeScreen(),
    );
  }
}

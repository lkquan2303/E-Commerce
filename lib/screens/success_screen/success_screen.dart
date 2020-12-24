import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  static String routName = "/success_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Success"),
      ),
      body: SuccessScreen(),
    );
  }
}
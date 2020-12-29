import 'package:flutter/material.dart';
import 'home_header.dart';

class BodyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
          ],
        ),
      ),
    );
  }
}

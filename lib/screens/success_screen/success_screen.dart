import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';
import 'components/body_success.dart';

class SuccessScreen extends StatelessWidget {
  static String routName = "/success_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
          ),
        ),
        centerTitle: true,
      ),
      body: BodySuccessScreen(),
    );
  }
}

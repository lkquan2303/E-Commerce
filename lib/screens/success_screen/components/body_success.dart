import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BodySuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/success.png"),
        Spacer(),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.2),
          child: DefaultButton(
            buttonText: "Back to home",
            buttonPress: () => Navigator.pushNamed(context, HomeScreen.routName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

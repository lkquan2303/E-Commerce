import 'package:e_commerce/components/tittle_style.dart';
import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class BodyOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("OTP Verification", style: tittleStyle()),
            Text("We sent your code to +84 987 654 321"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This code will expired in "),
                TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0.0),
                  duration: Duration(seconds: 30),
                  builder: (context, value, child) => Text(
                    "00:${value.toInt()}",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            OtpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.3),
            Text(
              "Resend OTP Code",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}

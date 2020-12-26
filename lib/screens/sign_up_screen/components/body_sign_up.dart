import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/tittle_style.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/sign_up_screen/components/sign_up_form.dart';
import 'package:e_commerce/screens/sign_up_screen/details_sign_up/details_sign_up_screen.dart';
import 'package:flutter/material.dart';

class BodySignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            Text(
              "Complete Profile",
              style: tittleStyle(),
            ),
            Text(
              "Complete your profile details or continew with social media.",
              textAlign: TextAlign.center,
            ),
            SignUpForm(),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
                buttonText: "Continue",
                buttonPress: () {
                  Navigator.pushNamed(context, DetailsSignUpScreen.routName);
                }),
            Spacer(),
            Text(
                "By continuting your confrifm that your with our Term and Condition",
                textAlign: TextAlign.center),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

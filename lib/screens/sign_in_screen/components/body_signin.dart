import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/sign_in_screen/components/sign_in_form.dart';
import 'package:flutter/material.dart';

class BodySignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(80),
                ),
                SignInForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

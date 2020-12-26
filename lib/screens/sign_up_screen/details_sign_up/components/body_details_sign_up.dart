import 'package:e_commerce/components/tittle_style.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';
import 'details_sign_up_form.dart';

class BodyDetailsSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Complete Profile",
                style: tittleStyle(),
              ),
              DetailsSignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}

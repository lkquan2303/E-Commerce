import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';

class DetailsSignUpForm extends StatefulWidget {
  @override
  _DetailsSignUpFormState createState() => _DetailsSignUpFormState();
}

class _DetailsSignUpFormState extends State<DetailsSignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(80),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              labelStyle: TextStyle(color: kTextColor),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              labelStyle: TextStyle(color: kTextColor),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Re-Password",
              hintText: "Enter your password again",
              labelStyle: TextStyle(color: kTextColor),
            ),
          ),
        ],
      ),
    );
  }
}

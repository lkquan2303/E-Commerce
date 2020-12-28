import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/sign_up_screen/components/text_form_field.dart';
import 'package:e_commerce/screens/sign_up_screen/details_sign_up/details_sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: getProportionateScreenHeight(40),
      ),

      //MARK: Text Field First Name
      buildTextFormField(
        lable: "First Name",
        hintText: "Enter your first name",
        isNumber: false,
      ),
      SizedBox(
        height: getProportionateScreenHeight(20),
      ),

      //MARK: Text Field Last Name
      buildTextFormField(
        lable: "Last Name",
        hintText: "Enter your last name",
        isNumber: false,
      ),
      SizedBox(
        height: getProportionateScreenHeight(20),
      ),

      //MARK: Text Field Phone Number
      buildTextFormField(
        lable: "Phone number",
        hintText: "Enter your phone number",
        isNumber: true,
      ),
      SizedBox(
        height: getProportionateScreenHeight(20),
      ),

      //MARK: Text Field Address
      buildTextFormField(
        lable: "Address",
        hintText: "Enter your address",
        isNumber: false,
      ),
      SizedBox(
        height: getProportionateScreenHeight(30),
      ),
      DefaultButton(
        buttonText: "Continue",
        buttonPress: () {
          Navigator.pushNamed(context, DetailsSignUpScreen.routName);
        },
      ),
    ]);
  }
}

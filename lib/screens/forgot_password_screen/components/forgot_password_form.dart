import 'package:e_commerce/components/custom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/otp_screen/otp_screen.dart';
import 'package:e_commerce/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final List<String> error = [];
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              if (value.isNotEmpty && error.contains(kEmailNullError)) {
                setState(() {
                  error.remove(kEmailNullError);
                });
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  error.contains(kInvalidEmailError)) {
                setState(() {
                  error.remove(kInvalidEmailError);
                });
                return "";
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !error.contains(kEmailNullError)) {
                setState(() {
                  error.add(kEmailNullError);
                });
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !error.contains(kInvalidEmailError)) {
                setState(() {
                  error.add(kInvalidEmailError);
                });
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(color: kTextColor),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: "Enter your email",
              suffixIcon: CustomSuffixIcon(image: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(8),
          ),
          FormError(errors: error),
          SizedBox(
            height: SizeConfig.screenHeight * 0.2,
          ),
          DefaultButton(
            buttonText: "Continue",
            buttonPress: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, OtpScreen.routName);
              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(fontSize: getProportionateScreenWidth(15)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.routName);
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(15),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

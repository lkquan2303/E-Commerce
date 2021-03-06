import 'package:e_commerce/components/custom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commerce/screens/sign_in_screen/components/social_sign_in.dart';
import 'package:e_commerce/screens/sign_up_screen/sign_up_screen.dart';
import 'package:e_commerce/screens/success_screen/success_screen.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, ForgotPasswordScreen.routName),
                child: Text("Forgot password?"),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),

          //MARK: Continue Button SignIn
          DefaultButton(
            buttonPress: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, SuccessScreen.routName);
              }
            },
            buttonText: "Continue",
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),

          //MARK: Social Login
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialSignInIcon(
                  image: "assets/icons/google-icon.svg", onTap: () {}),
              buildSocialSignInIcon(
                  image: "assets/icons/facebook-2.svg", onTap: () {}),
              buildSocialSignInIcon(
                  image: "assets/icons/twitter.svg", onTap: () {}),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),

          //MARK: Signup
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(fontSize: getProportionateScreenWidth(16)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.routName);
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

//MARK: Custom TextFormField Password
  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Password",
        hintText: "Enter Your Password",
        suffixIcon: CustomSuffixIcon(image: "assets/icons/Lock.svg"),
        labelStyle: TextStyle(color: kTextColor),
      ),
    );
  }

//MARK: Custom TextFormField Email
  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
          return "";
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Email",
        hintText: "Enter Your Email",
        suffixIcon: CustomSuffixIcon(image: "assets/icons/Mail.svg"),
        labelStyle: TextStyle(color: kTextColor),
      ),
      style: TextStyle(
        decoration: TextDecoration.none,
      ),
    );
  }
}

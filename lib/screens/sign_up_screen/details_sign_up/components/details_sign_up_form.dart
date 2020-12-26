import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';

class DetailsSignUpForm extends StatefulWidget {
  @override
  _DetailsSignUpFormState createState() => _DetailsSignUpFormState();
}

class _DetailsSignUpFormState extends State<DetailsSignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String rePassword;
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(80),
          ),
          buildEmailSignUpFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordSignUpFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildRePasswordSignUpFormField(),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(60),
          ),
          DefaultButton(
            buttonText: "Continue",
            buttonPress: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildRePasswordSignUpFormField() {
    return TextFormField(
      onChanged: (value) {
        if (errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        }
        return "";
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Re-Password",
        hintText: "Enter your password again",
        labelStyle: TextStyle(color: kTextColor),
      ),
    );
  }

  TextFormField buildPasswordSignUpFormField() {
    return TextFormField(
      onChanged: (value) {
        if (errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        }
        return "";
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        labelStyle: TextStyle(color: kTextColor),
      ),
    );
  }

  TextFormField buildEmailSignUpFormField() {
    return TextFormField(
      onChanged: (value) {
        if (errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return "";
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        labelStyle: TextStyle(color: kTextColor),
      ),
    );
  }
}

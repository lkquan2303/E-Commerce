import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
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
              SignForm()
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            labelStyle: TextStyle(color: kTextColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // contentPadding: EdgeInsets.symmetric(
            //   horizontal: 42,
            //   vertical: 15,
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(28),
            //   borderSide: BorderSide(color: kTextColor),
            //   gapPadding: 10,
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(28),
            //   borderSide: BorderSide(color: kTextColor),
            //   gapPadding: 10,
            // ),
          ),
        )
      ],
    );
  }
}

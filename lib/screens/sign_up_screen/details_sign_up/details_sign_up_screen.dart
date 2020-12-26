import 'package:flutter/material.dart';
import 'components/body_details_sign_up.dart';

class DetailsSignUpScreen extends StatelessWidget {
  static String routName = "/details_sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
          centerTitle: true,
        ),
        body: BodyDetailsSignUp());
  }
}

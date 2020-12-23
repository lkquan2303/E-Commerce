import 'package:e_commerce/screens/sign_in/components/body_signin.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: BodySignIn(),
    );
  }
}

import 'package:flutter/material.dart';
import 'components/body_forgot_password.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body: BodyForgotPassword(),
    );
  }
}

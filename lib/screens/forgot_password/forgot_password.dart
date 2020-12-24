import 'package:e_commerce/screens/forgot_password/components/body_forgot_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot Password")),
      body: BodyForgotPassword(),
    );
  }
}

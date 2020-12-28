import 'package:flutter/material.dart';
import 'components/body_otp.dart';

class OtpScreen extends StatelessWidget {
  static String routName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: BodyOtpScreen(),
    );
  }
}

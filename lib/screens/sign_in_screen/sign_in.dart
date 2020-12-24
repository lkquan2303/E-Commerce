import 'package:flutter/material.dart';
import 'components/body_signin.dart';

class SignInScreen extends StatelessWidget {
  static String routName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: BodySignIn(),
      ),
    );
  }
}

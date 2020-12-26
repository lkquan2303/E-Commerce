import 'package:e_commerce/components/tittle_style.dart';
import 'package:flutter/material.dart';

import 'details_sign_up_form.dart';

class BodyDetailsSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Complete Profile",
            style: tittleStyle(),
          ),
          DetailsSignUpForm()
        ],
      ),
    );
  }
}

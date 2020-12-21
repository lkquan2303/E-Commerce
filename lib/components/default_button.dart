import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.buttonText,
    this.buttonPress,
  }) : super(key: key);
  final String buttonText;
  final Function buttonPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: buttonPress,
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18), color: Colors.white),
          ),
          color: kPrimaryColor),
    );
  }
}

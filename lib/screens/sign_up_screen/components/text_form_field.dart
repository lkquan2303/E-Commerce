import 'package:e_commerce/config/constants.dart';
import 'package:flutter/material.dart';

TextFormField buildTextFormField(
    {String lable, String hintText, bool isNumber}) {
  return TextFormField(
    keyboardType: isNumber ? TextInputType.number : TextInputType.text,
    decoration: InputDecoration(
      labelText: lable,
      hintText: hintText,
      labelStyle: TextStyle(color: kTextColor),
    ),
  );
}

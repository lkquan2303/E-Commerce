import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

GestureDetector buildSocialSignInIcon({String image, Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        margin: EdgeInsets.all(10),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenHeight(40),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kSecondaryColor.withOpacity(0.3),
        ),
        child: SvgPicture.asset(
          image,
        )),
  );
}

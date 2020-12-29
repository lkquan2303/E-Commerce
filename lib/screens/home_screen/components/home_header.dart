import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/home_screen/components/search_field.dart';
import 'package:flutter/material.dart';

import 'icon_btn_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.6,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SearchField(),
          ),
          IconBtnWithCounter(
            press: () {},
            svgSrc: "assets/icons/Cart Icon.svg",
            numberOfItem: 1,
          ),
          IconBtnWithCounter(
            press: () {},
            svgSrc: "assets/icons/Bell.svg",
            numberOfItem: 3,
          ),
        ],
      ),
    );
  }
}
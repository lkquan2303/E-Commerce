import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class BodyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            DiscountBanner(),
          ],
        ),
      ),
    );
  }
}


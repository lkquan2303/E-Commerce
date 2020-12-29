import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/home_screen/components/popular_product.dart';
import 'package:e_commerce/screens/home_screen/components/special_offer.dart';
import 'package:flutter/material.dart';
import 'categories_item.dart';
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
            SizedBox(height: getProportionateScreenHeight(20)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            CategoriesItem(),
            SizedBox(height: getProportionateScreenHeight(20)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenHeight(20)),
            PopularProduct()
          ],
        ),
      ),
    );
  }
}

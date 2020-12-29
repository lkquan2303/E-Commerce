import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenHeight(20),
        vertical: getProportionateScreenHeight(15),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenHeight(20),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surpise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

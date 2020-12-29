import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:e_commerce/screens/home_screen/components/section_title.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> popularProduct = [
      {
        "text": "Wireless Controller for PS4",
        "image": "assets/images/Image Popular Product 1.png",
        "price": 64.99
      },
      {
        "text": "Nike Sport White - Mon Pant",
        "image": "assets/images/Image Popular Product 2.png",
        "price": 30.99
      },
      {
        "text": "Gloves Rep 1 : 1, Super Warm",
        "image": "assets/images/Image Popular Product 3.png",
        "price": 20.05
      },
    ];
    return Column(
      children: [
        SectionTitle(title: "Popular Products", press: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              popularProduct.length,
              (index) => PopularProductCard(
                image: popularProduct[index]["image"],
                productName: popularProduct[index]["text"],
                price: popularProduct[index]["price"],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({
    Key key,
    @required this.image,
    @required this.productName,
    @required this.price,
  }) : super(key: key);

  final String image, productName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenHeight(20)),
      child: SizedBox(
        width: getProportionateScreenHeight(130),
        child: Column(
          children: [
            SizedBox(
              width: getProportionateScreenHeight(130),
              height: getProportionateScreenHeight(130),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(image),
              ),
            ),
            Text(
              productName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenWidth(16),
              ),
              textAlign: TextAlign.center,
            ),
            Text("\$$price",
                style:
                    TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}

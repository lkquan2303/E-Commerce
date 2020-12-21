import 'package:e_commerce/config/constants.dart';
import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';

class BodySplash extends StatefulWidget {
  @override
  _BodySplashState createState() => _BodySplashState();
}

class _BodySplashState extends State<BodySplash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(children: [
              Text(
                "My Feeling",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Welcome to My Feeling, Let's shop!"),
              Image.asset("assets\images\splash_1.png"),
            ]),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

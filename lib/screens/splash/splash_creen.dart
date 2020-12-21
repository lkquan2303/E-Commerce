import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body_splash.dart';

class SplashCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BodySplash(),
    );
  }
}

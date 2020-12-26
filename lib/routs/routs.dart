import 'package:e_commerce/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commerce/screens/sign_in_screen/sign_in_screen.dart';
import 'package:e_commerce/screens/sign_up_screen/details_sign_up/details_sign_up_screen.dart';
import 'package:e_commerce/screens/sign_up_screen/sign_up_screen.dart';
import 'package:e_commerce/screens/splash_screen/splash_creen.dart';
import 'package:e_commerce/screens/success_screen/success_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routName: (context) => SplashScreen(),
  SignInScreen.routName: (context) => SignInScreen(),
  ForgotPasswordScreen.routName: (context) => ForgotPasswordScreen(),
  SuccessScreen.routName: (context) => SuccessScreen(),
  SignUpScreen.routName: (context) => SignUpScreen(),
  DetailsSignUpScreen.routName: (context) => DetailsSignUpScreen(),
};

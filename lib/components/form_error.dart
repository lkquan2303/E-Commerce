import 'package:e_commerce/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => Padding(
          padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
          child: ErrorText(errors: errors[index]),
        ),
      ),
    );
  }
}

class ErrorText extends StatelessWidget {
  const ErrorText({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final String errors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenHeight(20),
          width: getProportionateScreenWidth(20),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(errors)
      ],
    );
  }
}

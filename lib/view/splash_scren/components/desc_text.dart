import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';

class DescText extends StatefulWidget {
  const DescText({Key? key}) : super(key: key);

  @override
  State<DescText> createState() => _DescTextState();
}

SplashScreenTexts texts = SplashScreenTexts();

class _DescTextState extends State<DescText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      texts.desc,
      style: Theme.of(context).copyWith().textTheme.bodyText1,
      textAlign: TextAlign.center,
    );
  }
}

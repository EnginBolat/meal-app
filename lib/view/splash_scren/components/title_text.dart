import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';

class TitleText extends StatefulWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  State<TitleText> createState() => _TitleTextState();
}

SplashScreenTexts texts = SplashScreenTexts();

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        texts.title,
        style: Theme.of(context).copyWith().textTheme.headline4,
      ),
    );
  }
}

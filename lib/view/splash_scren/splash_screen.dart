import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_app/constants/const_images.dart';
import 'package:meal_app/constants/const_texts.dart';
import 'package:meal_app/view/splash_scren/components/widget_tree.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  SplashScreenTexts texts = SplashScreenTexts();
  SplashScreenImages images = SplashScreenImages();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(child: WidgetTree()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_images.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

SplashScreenImages images = SplashScreenImages();

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(images.mainPhoto),
    );
  }
}

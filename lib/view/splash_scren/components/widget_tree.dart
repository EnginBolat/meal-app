import 'package:flutter/material.dart';
import 'package:meal_app/view/splash_scren/components/desc_text.dart';
import 'package:meal_app/view/splash_scren/components/image_widget.dart';
import 'package:meal_app/view/splash_scren/components/lets_cook_button.dart';
import 'package:meal_app/view/splash_scren/components/title_text.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {

    var deviceHeight=MediaQuery.of(context).size.height;

    

    return Column(
      children: [
        const ImageWidget(),
        SizedBox(height: deviceHeight/20),
        Column(
          children: [
            TitleText(),
            SizedBox(height: deviceHeight/30),
            DescText(),
            SizedBox(height: deviceHeight/8),
            LetsCookButton(),
          ],
        )
      ],
    );
  }
}

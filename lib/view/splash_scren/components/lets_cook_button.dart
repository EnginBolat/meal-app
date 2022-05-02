import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';

import 'package:meal_app/view/home_screen/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class LetsCookButton extends StatefulWidget {
  const LetsCookButton({Key? key}) : super(key: key);

  @override
  State<LetsCookButton> createState() => _LetsCookButtonState();
}

SplashScreenTexts texts = SplashScreenTexts();

class _LetsCookButtonState extends State<LetsCookButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          onPressed: () async {
            // await Navigator.of(context PageTransition(type: PageTransitionType.fade, child: DetailScreen())).pushReplacement(MaterialPageRoute(
            //     builder: (context) => HomeScreen(),
            //   ));
              await Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: HomeScreen()));
          },
          label: Text(
            texts.buttonText,
            style: Theme.of(context).copyWith().textTheme.headline5,
          ),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}

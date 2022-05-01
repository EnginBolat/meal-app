// ignore: file_names
import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';

// ignore: must_be_immutable
class Instructions extends StatelessWidget {
  Instructions({Key? key, required this.strInstructions}) : super(key: key);

  String strInstructions;
  MealDetailsPageTexts texts = MealDetailsPageTexts();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texts.instructions,
            style: Theme.of(context).textTheme.subtitle1!.merge(
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            strInstructions,
            style: const TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}

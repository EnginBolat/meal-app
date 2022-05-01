import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';

// ignore: must_be_immutable
class MealDeatilsWidget extends StatelessWidget {
  MealDeatilsWidget(
      {Key? key,
      required this.strMeal,
      required this.strArea,
      required this.strCategory})
      : super(key: key);
  String strMeal, strArea, strCategory;
  MealDetailsPageTexts texts = MealDetailsPageTexts();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(strMeal.length > 35 ? strMeal.substring(0, 30) + "..." : strMeal,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .merge(const TextStyle(fontWeight: FontWeight.w600))),
          const SizedBox(
            height: 10,
          ),
          Text(texts.country + strArea,
              style: Theme.of(context).textTheme.subtitle1),
          const SizedBox(
            height: 10,
          ),
          Text(texts.category + strCategory,
              style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
    );
  }
}

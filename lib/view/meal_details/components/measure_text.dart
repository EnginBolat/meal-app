import 'package:flutter/material.dart';

// ignore: camel_case_types
class Ingredient_mesaure_text extends StatelessWidget {
  const Ingredient_mesaure_text(
      {Key? key, required this.strIngredient, required this.strMeasure})
      : super(key: key);

  final String? strIngredient;
  final String? strMeasure;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (strIngredient == "" || strIngredient == null)
          Container()
        else
          Text(
            strIngredient!,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          ),
        if (strMeasure == "" || strMeasure == null)
          Container()
        else
          Text(
            strMeasure!,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          ),
      ],
    );
  }
}

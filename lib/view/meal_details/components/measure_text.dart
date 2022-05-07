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
        if (strIngredient != "" &&
            strIngredient != " " &&
            strIngredient != null)
          Text(
            strIngredient!,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white, fontSize: 16,height: 2),
          ),
        if (strMeasure != "" && strMeasure != " " && strMeasure != null)
          Text(
            strMeasure!,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white, fontSize: 16,height: 2),
          ),
      ],
    );
  }
}

              // const SizedBox(height: 15),
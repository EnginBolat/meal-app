import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListOfCountriesMeals extends StatelessWidget {
  ListOfCountriesMeals({Key? key, required this.strMealThumb, required this.strMeal})
      : super(key: key);

  String strMealThumb, strMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 90,
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(strMealThumb),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    strMeal.length > 25
                        ? strMeal.substring(0, 25) + "..."
                        : strMeal,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:meal_app/view/meal_details/components/meal_details_page_widget_tree.dart';

// ignore: must_be_immutable
class MealDetailsPage extends StatelessWidget {
  MealDetailsPage({ Key? key ,required this.mealId}) : super(key: key);

  int mealId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailsPageWidgetTree(mealId: mealId),
    );
  }
}

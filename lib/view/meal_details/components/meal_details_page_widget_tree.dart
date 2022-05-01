import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/services/json_services.dart';
import 'package:meal_app/view/meal_details/components/instructions.dart';
import 'package:meal_app/view/meal_details/components/meal_details_page_image.dart';
import 'package:meal_app/view/meal_details/components/meal_details_widget.dart';
import 'package:meal_app/view/meal_details/components/video_player.dart';

// ignore: must_be_immutable
class DetailsPageWidgetTree extends StatelessWidget {
  DetailsPageWidgetTree({Key? key, required this.mealId}) : super(key: key);

  int mealId;
  JsonServices services = JsonServices();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MealDetail>>(
      future: services.mealsDetails(mealId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var mealDetailsList = snapshot.data;
          return ListView.builder(
            itemCount: mealDetailsList!.length,
            itemBuilder: (context, index) {
              var mealDetailVar = mealDetailsList[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MealDetailsPageImage(
                      strMealThumb: mealDetailVar.strMealThumb),
                  MealDeatilsWidget(
                    strMeal: mealDetailVar.strMeal,
                    strArea: mealDetailVar.strArea,
                    strCategory: mealDetailVar.strCategory,
                  ),
                  Instructions(
                    strInstructions: mealDetailVar.strInstructions,
                  ),
                  VideoPlayer(
                    videoUrl: mealDetailVar.strYoutube,
                  ),
                ],
              );
            },
          );
        } else {
          return const Center();
        }
      },
    );
  }
}

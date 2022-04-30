import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_colors.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/services/json_services.dart';

// ignore: must_be_immutable
class FoodWidget extends StatelessWidget {
  FoodWidget({Key? key}) : super(key: key);

  AppColors appColors = AppColors();
  JsonServices services = JsonServices();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MealDetail>>(
      future: services.randomMeal(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var randomMeals = snapshot.data;
          return Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 320,
                child: ListView.builder(
                  itemCount: randomMeals!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var randomMeal = randomMeals[index];

                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: appColors.appColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            height: 300,
                            width: 250,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 250,
                                  width: 250,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image(
                                      fit: BoxFit.fill,
                                      image:
                                          NetworkImage(randomMeal.strMealThumb),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  randomMeal.strMeal,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          Container(
                            decoration: BoxDecoration(
                              color: appColors.appColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            height: 300,
                            width: 250,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 250,
                                  width: 250,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image(
                                      fit: BoxFit.fill,
                                      image:
                                          NetworkImage(randomMeal.strMealThumb),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  randomMeal.strMeal,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return const Center();
        }
      },
    );
  }
}

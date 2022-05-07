import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:meal_app/constants/const_colors.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/services/json_services.dart';
import 'package:meal_app/view/meal_details/meal_details_page.dart';
import 'package:page_transition/page_transition.dart';

// ignore: must_be_immutable
class FoodWidget extends StatelessWidget {
  FoodWidget({Key? key}) : super(key: key);

  AppColors appColors = AppColors();
  JsonServices services = JsonServices();

  Widget buildImage(String url) => ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: SizedBox(
          height: 250,
          width: 250,
          child: CachedNetworkImage(
            key: UniqueKey(),
            imageUrl: url,
            height: 50,
            width: 80,
            fit: BoxFit.fill,
            placeholder: (context, url) => Container(color: appColors.appColor),
          ),
        ),
      );

  static final customCacheManager = CacheManager(
      Config('customCacheKey', stalePeriod: const Duration(days: 5)));

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
                          GestureDetector(
                            onTap: () async {
                              // await Navigator.push(context,
                              //     MaterialPageRoute(builder: ((context) {
                              //   return MealDetailsPage(
                              //     mealId: int.parse(randomMeal.idMeal),
                              //   );
                              // })));
                              await Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: MealDetailsPage(
                                        mealId: int.parse(randomMeal.idMeal),
                                      )));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: appColors.appColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              height: 350,
                              width: 250,
                              child: Column(
                                children: [
                                  buildImage(randomMeal.strMealThumb),
                                  // SizedBox(
                                  //   height: 250,
                                  //   width: 250,
                                  //   child: ClipRRect(
                                  //     borderRadius: BorderRadius.circular(25),
                                  //     child: Image(
                                  //       fit: BoxFit.fill,
                                  //       image: NetworkImage(
                                  //           randomMeal.strMealThumb),
                                  //     ),
                                  //   ),
                                  // ),
                                  const SizedBox(height: 20),
                                  Text(
                                    randomMeal.strMeal,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 30),
                          GestureDetector(
                            onTap: () async {
                              // await Navigator.push(context,
                              //     MaterialPageRoute(builder: ((context) {
                              //   return MealDetailsPage(
                              //     mealId: int.parse(randomMeal.idMeal),
                              //   );
                              // })));
                              await Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: MealDetailsPage(
                                        mealId: int.parse(randomMeal.idMeal),
                                      )));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: appColors.appColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              height: 350,
                              width: 250,
                              child: Column(
                                children: [
                                  buildImage(randomMeal.strMealThumb),

                                  // SizedBox(
                                  //   height: 250,
                                  //   width: 250,
                                  //   child: ClipRRect(
                                  //     borderRadius: BorderRadius.circular(25),
                                  //     child: Image(
                                  //       fit: BoxFit.fill,
                                  //       image: NetworkImage(
                                  //           randomMeal.strMealThumb),
                                  //     ),
                                  //   ),
                                  // ),
                                  const SizedBox(height: 20),
                                  Text(
                                    randomMeal.strArea,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
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

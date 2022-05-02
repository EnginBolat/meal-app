import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:meal_app/constants/const_texts.dart';
import 'package:meal_app/constants/const_theme_data.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/services/json_services.dart';
import 'package:meal_app/view/meal_details/meal_details_page.dart';
import 'package:page_transition/page_transition.dart';

// ignore: must_be_immutable
class CheffRecommentWidget extends StatelessWidget {
  CheffRecommentWidget({Key? key}) : super(key: key);

  JsonServices services = JsonServices();
  HomePageTexts texts = HomePageTexts();

  Widget buildImage(String url) => ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: SizedBox(
          height: 250,
          width: 250,
          child: CachedNetworkImage(
            key: UniqueKey(),
            imageUrl: url,
            fit: BoxFit.fill,
            placeholder: (context, url) => Container(color: appColors.appColor),
          ),
        ),
      );

  static final customCacheManager = CacheManager(
      Config('customCacheKey', stalePeriod: const Duration(days: 1)));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MealDetail>>(
      future: services.randomMeal(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var randomMeals = snapshot.data;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: randomMeals!.length,
            itemBuilder: (context, index) {
              var randomMeal = randomMeals[index];
              return Column(
                children: [
                  Text(
                    texts.chefReco,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  const SizedBox(height: 30),
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
                            ),
                          ),
                        );
                      },
                      child: buildImage(randomMeal.strMealThumb)
                      // SizedBox(
                      //   height: 250,
                      //   width: 250,
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(25),
                      //     child: Image(
                      //       fit: BoxFit.fill,
                      //       image: NetworkImage(
                      //         randomMeal.strMealThumb,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      ),
                  const SizedBox(height: 20),
                  Text(
                    randomMeal.strMeal,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 20),
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

import 'package:flutter/material.dart';
import 'package:meal_app/models/meals_orderby_categories.dart';
import 'package:meal_app/services/json_services.dart';
import 'package:meal_app/view/meal_details/meal_details_page.dart';
import 'package:meal_app/view/meals_sorting/components/list_of_countries_meal.dart';
import 'package:page_transition/page_transition.dart';

// ignore: must_be_immutable
class MealSortingByCountry extends StatelessWidget {
  MealSortingByCountry({Key? key, required this.countryName}) : super(key: key);

  String countryName;
  JsonServices services = JsonServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(countryName.toUpperCase()),
      ),
      body: FutureBuilder<List<MealsOrderyByCategories>>(
        future: services.selectedCountries(countryName),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var mealList = snapshot.data;
            return ListView.builder(
              itemCount: mealList!.length,
              itemBuilder: (context, index) {
                var meal = mealList[index];
                return GestureDetector(
                    onTap: () async {
                      // await Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: ((context) => MealDetailsPage(
                      //           mealId: int.parse(meal.idMeal),
                      //         )),
                      //   ),
                      // );
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: MealDetailsPage(
                            mealId: int.parse(meal.idMeal),
                          ),
                        ),
                      );
                    },
                    child: ListOfCountriesMeals(
                      strMeal: meal.strMeal,
                      strMealThumb: meal.strMealThumb,
                    ));
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meal_app/models/meals_orderby_categories.dart';
import 'package:meal_app/services/json_services.dart';
import 'package:meal_app/view/meal_details/meal_details_page.dart';
import 'package:meal_app/view/meals_sorting_category/components/list_of_meals.dart';


// ignore: must_be_immutable
class MealsSortingPage extends StatefulWidget {
  MealsSortingPage({Key? key, required this.categoryName}) : super(key: key);

  String categoryName;

  @override
  State<MealsSortingPage> createState() => _MealsSortingPageState();
}

class _MealsSortingPageState extends State<MealsSortingPage> {
  JsonServices services = JsonServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName.toUpperCase()),
      ),
      body: FutureBuilder<List<MealsOrderyByCategories>>(
        future: services.listAllMealsOrderByCategory(widget.categoryName),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var mealList = snapshot.data;
            return ListView.builder(
              itemCount: mealList!.length,
              itemBuilder: (context, index) {
                var meal = mealList[index];
                return GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => MealDetailsPage(
                                mealId: int.parse(meal.idMeal),
                              )),
                        ),
                      );
                    },
                    child: ListOfMeals(
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

import 'package:flutter/material.dart';
import 'package:meal_app/models/meals_orderby_categories.dart';
import 'package:meal_app/services/json_services.dart';

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
            var kisiListesi = snapshot.data;
            return ListView.builder(
              itemCount: kisiListesi!.length,
              itemBuilder: (context, index) {
                var kisi = kisiListesi[index];
                return Card(
                  child: SizedBox(
                    height: 90,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:20),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(kisi.strMealThumb),
                                ),
                              ),
                            ),
                            // SizedBox(width: MediaQuery.of(context).size.width/5),
                            Center(
                              child: Text(
                                kisi.strMeal.length > 25
                                    ? kisi.strMeal.substring(0, 25) +
                                        "..."
                                    : kisi.strMeal,
                                style:
                                    Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
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

import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_theme_data.dart';
import 'package:meal_app/models/categories_model.dart';
import 'package:meal_app/services/json_services.dart';
import 'package:meal_app/view/meals_sorting_category/meals_sorting_page.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key}) : super(key: key);

  JsonServices services = JsonServices();

  Future initialization(BuildContext? context) async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Categories>>(
      future: services.allCategories(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var categoryList = snapshot.data;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: categoryList!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var category = categoryList[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () async {
                          initialization(context);
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => MealsSortingPage(
                                  categoryName: category.strCategory)),
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundColor: appColors.imageBGColor,
                            child: Image.network(
                              category.strCategoryThumb,
                              height: 50,
                              width: 80,
                            ),
                          ),
                        ),
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

import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/services/json_services.dart';

class CheffRecommentWidget extends StatelessWidget {
  CheffRecommentWidget({Key? key}) : super(key: key);

  JsonServices services = JsonServices();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MealDetail>>(
      future: services.randomMeal(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var randomMeals = snapshot.data;
          return ListView.builder(
            shrinkWrap: true,
            itemCount: randomMeals!.length,
            itemBuilder: (context, index) {
              var randomMeal = randomMeals[index];
              return Column(
      children: [
        Text(
          "Chef's Recommendation",
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28
              ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 250,
          width: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                randomMeal.strMealThumb,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(randomMeal.strMeal,style: Theme.of(context).textTheme.subtitle1,),
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

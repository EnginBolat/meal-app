import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';
import 'package:meal_app/constants/const_theme_data.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/view/meal_details/components/measure_text.dart';

class IngredientAndMeasure extends StatelessWidget {
  const IngredientAndMeasure({
    Key? key,
    required this.texts,
    required this.mealDetailVar,
  }) : super(key: key);

  final MealDetailsPageTexts texts;
  final MealDetail mealDetailVar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: appColors.appColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 24.0, vertical: 24.0),
          child: Column(
            children: [
              Text(texts.ingredientandMeasure,style:Theme.of(context).textTheme.headline5,),
              const SizedBox(height: 30),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient1,
                strMeasure: mealDetailVar.strMeasure1,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient2,
                strMeasure: mealDetailVar.strMeasure2,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient3,
                strMeasure: mealDetailVar.strMeasure3,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient4,
                strMeasure: mealDetailVar.strMeasure4,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient5,
                strMeasure: mealDetailVar.strMeasure5,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient6,
                strMeasure: mealDetailVar.strMeasure6,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient7,
                strMeasure: mealDetailVar.strMeasure7,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient8,
                strMeasure: mealDetailVar.strMeasure8,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient9,
                strMeasure: mealDetailVar.strMeasure9,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient10,
                strMeasure: mealDetailVar.strMeasure10,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient11,
                strMeasure: mealDetailVar.strMeasure11,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient12,
                strMeasure: mealDetailVar.strMeasure12,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient13,
                strMeasure: mealDetailVar.strMeasure13,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient14,
                strMeasure: mealDetailVar.strMeasure14,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient15,
                strMeasure: mealDetailVar.strMeasure15,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient16,
                strMeasure: mealDetailVar.strMeasure16,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient17,
                strMeasure: mealDetailVar.strMeasure17,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient18,
                strMeasure: mealDetailVar.strMeasure19,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient19,
                strMeasure: mealDetailVar.strMeasure19,
              ),
              const SizedBox(height: 15),
              Ingredient_mesaure_text(
                strIngredient: mealDetailVar.strIngredient20,
                strMeasure: mealDetailVar.strMeasure20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meal_app/models/categories_model.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/models/meals_orderby_categories.dart';

class JsonServices {

  List<Categories> parseAllCategories(String cevap) {
    return CategoriesResponse.fromJson(jsonDecode(cevap)).listOfCategories;
  }

  List<MealsOrderyByCategories> parseSiralanmisYemekler(String cevap) {
    return FoodsOrderByCategory.fromJson(jsonDecode(cevap)).listOfOrdered;
  }

  List<MealDetail> parseMealDetails(String cevap) {
    return MealDetailsResponse.fromJson(jsonDecode(cevap)).listOfDetails;
  }


  Future<List<Categories>> allCategories() async {
    var url =
        Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php");
    var cevap = await http.get(url);
    return parseAllCategories(cevap.body);
  }

  Future<List<MealsOrderyByCategories>> listAllMealsOrderByCategory(
      String categoryName) async {
    var url = Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/filter.php?c=$categoryName");
    var cevap = await http.get(url);
    return parseSiralanmisYemekler(cevap.body);
  }

  Future<List<MealDetail>> mealsDetails(
      int mealId) async {
    var url = Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/lookup.php?i=$mealId");
    var cevap = await http.get(url);
    return parseMealDetails(cevap.body);
  }

Future<List<MealDetail>> randomMeal() async {
    var url = Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/random.php");
    var cevap = await http.get(url);
    return parseMealDetails(cevap.body);
  }
}

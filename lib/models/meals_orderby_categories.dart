class MealsOrderyByCategories {
  String strMeal;
  String strMealThumb;
  String idMeal;

  MealsOrderyByCategories(this.strMeal, this.strMealThumb, this.idMeal);

  factory MealsOrderyByCategories.fromJson(Map<String, dynamic> json) {
    return MealsOrderyByCategories(
      json["strMeal"] as String,
      json["strMealThumb"] as String,
      json["idMeal"] as String,
    );
  }
}

class FoodsOrderByCategory {
  List<MealsOrderyByCategories> listOfOrdered;

  FoodsOrderByCategory(this.listOfOrdered);

  factory FoodsOrderByCategory.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["meals"] as List;
    List<MealsOrderyByCategories> listOfOrdered = jsonArray
        .map((jsonArrayNesnesi) =>
            MealsOrderyByCategories.fromJson(jsonArrayNesnesi))
        .toList();

    return FoodsOrderByCategory(listOfOrdered);
  }
}

class MealDetail {
  String idMeal;
  String strMeal;
  String strCategory;
  String strArea;
  String strInstructions;
  String strMealThumb;
  String strYoutube;

  MealDetail(this.idMeal, this.strMeal, this.strCategory, this.strArea,
      this.strInstructions, this.strMealThumb, this.strYoutube);

  factory MealDetail.fromJson(Map<String, dynamic> json) {
    return MealDetail(
      json["idMeal"] as String,
      json["strMeal"] as String,
      json["strCategory"] as String,
      json["strArea"] as String,
      json["strInstructions"] as String,
      json["strMealThumb"] as String,
      json["strYoutube"] as String,
    );
  }
}

class MealDetailsResponse {
  List<MealDetail> listOfDetails;

  MealDetailsResponse(this.listOfDetails);

  factory MealDetailsResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["meals"] as List;
    List<MealDetail> listOfDetails = jsonArray
        .map((jsonArrayNesnesi) => MealDetail.fromJson(jsonArrayNesnesi))
        .toList();

    return MealDetailsResponse(listOfDetails);
  }
}

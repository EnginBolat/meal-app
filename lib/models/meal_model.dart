class MealDetail {
  String idMeal;
  String strMeal;
  String strCategory;
  String strArea;
  String strInstructions;
  String strMealThumb;
  String strYoutube;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  String? strIngredient16;
  String? strIngredient17;
  String? strIngredient18;
  String? strIngredient19;
  String? strIngredient20;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  String? strMeasure16;
  String? strMeasure17;
  String? strMeasure18;
  String? strMeasure19;
  String? strMeasure20;

  MealDetail(
    this.idMeal,
    this.strMeal,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
  );

  factory MealDetail.fromJson(Map<String, dynamic> json) {
    return MealDetail(
      json["idMeal"] as String,
      json["strMeal"] as String,
      json["strCategory"] as String,
      json["strArea"] as String,
      json["strInstructions"] as String,
      json["strMealThumb"] as String,
      json["strYoutube"] as String,
      json["strIngredient1"] as String,
      json["strIngredient2"] as String,
      json["strIngredient3"] as String,
      json["strIngredient4"] as String,
      json["strIngredient5"] as String,
      json["strIngredient6"] as String,
      json["strIngredient7"] as String,
      json["strIngredient8"] as String,
      json["strIngredient9"] as String,
      json["strIngredient10"] as String,
      json["strIngredient11"] as String,
      json["strIngredient12"] as String,
      json["strIngredient13"] as String,
      json["strIngredient14"] as String,
      json["strIngredient15"] as String,
      json["strIngredient16"] as String,
      json["strIngredient17"] as String,
      json["strIngredient18"] as String,
      json["strIngredient19"] as String,
      json["strIngredient20"] as String,
      json["strMeasure1"] as String,
      json["strMeasure2"] as String,
      json["strMeasure3"] as String,
      json["strMeasure4"] as String,
      json["strMeasure5"] as String,
      json["strMeasure6"] as String,
      json["strMeasure7"] as String,
      json["strMeasure8"] as String,
      json["strMeasure9"] as String,
      json["strMeasure10"] as String,
      json["strMeasure11"] as String,
      json["strMeasure12"] as String,
      json["strMeasure13"] as String,
      json["strMeasure14"] as String,
      json["strMeasure15"] as String,
      json["strMeasure16"] as String,
      json["strMeasure17"] as String,
      json["strMeasure18"] as String,
      json["strMeasure19"] as String,
      json["strMeasure20"] as String,
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

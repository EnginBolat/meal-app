class Categories {
  String idCategory;
  String strCategory;
  String strCategoryThumb;
  String strCategoryDescription;

  Categories(this.idCategory, this.strCategory, this.strCategoryThumb,
      this.strCategoryDescription);

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      json["idCategory"] as String,
      json["strCategory"] as String,
      json["strCategoryThumb"] as String,
      json["strCategoryDescription"] as String,
    );
  }
}

class CategoriesResponse {
  List<Categories> listOfCategories;

  CategoriesResponse(this.listOfCategories);

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["categories"] as List;
    List<Categories> listOfCategories = jsonArray
        .map((jsonArrayNesnesi) => Categories.fromJson(jsonArrayNesnesi))
        .toList();

    return CategoriesResponse(listOfCategories);
  }
}
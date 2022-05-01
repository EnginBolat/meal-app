class Countries {
  String strArea;

  Countries(this.strArea);

  factory Countries.fromJson(Map<String, dynamic> json) {
    return Countries(
      json["strArea"] as String,
    );
  }
}

class CountriesResponse {
  List<Countries> listOfCountries;

  CountriesResponse(this.listOfCountries);

  factory CountriesResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["meals"] as List;
    List<Countries> listOfCountries = jsonArray
        .map((jsonArrayNesnesi) => Countries.fromJson(jsonArrayNesnesi))
        .toList();

    return CountriesResponse(listOfCountries);
  }
}

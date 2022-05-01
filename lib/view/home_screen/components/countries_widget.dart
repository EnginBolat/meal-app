
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';
import 'package:meal_app/constants/const_theme_data.dart';
import 'package:meal_app/models/countries_model.dart';
import 'package:meal_app/services/json_services.dart';
import 'package:meal_app/view/meals_sorting/meals_sorting_page.dart';


class CountriesWidget extends StatelessWidget {
  CountriesWidget({Key? key}) : super(key: key);

  Future initialization(BuildContext? context) async {
    await Future.delayed(const Duration(seconds: 3));
  }

  JsonServices services = JsonServices();
  HomePageTexts texts = HomePageTexts();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Countries>>(
      future: services.allCountries(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var countryList = snapshot.data;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  texts.country,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: countryList!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var country = countryList[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () async {
                          initialization(context);
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => MealSortingByCountry(
                                  countryName: country.strArea)),
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            "assets/countryFlags/${country.strArea}.png",
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

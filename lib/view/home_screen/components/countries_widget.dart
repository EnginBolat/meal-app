import 'package:flutter/material.dart';
import 'package:meal_app/models/dummy_countries.dart';

class CountriesWidget extends StatelessWidget {
  const CountriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Countries",
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: countries.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage(countries[index].countryImageLink),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

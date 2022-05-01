import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:meal_app/constants/const_theme_data.dart';

// ignore: must_be_immutable
class ListOfMeals extends StatelessWidget {
  ListOfMeals({Key? key, required this.strMealThumb, required this.strMeal})
      : super(key: key);

  String strMealThumb, strMeal;

  Widget buildImage(String url) => ClipRRect(
    borderRadius: BorderRadius.circular(25),
        child: SizedBox(
          height: 80,
          width: 80,
          child: CachedNetworkImage(
            key: UniqueKey(),
            imageUrl: url,
            placeholder: (context, url) =>
                Container(color: appColors.imageBGColor),
          ),
        ),
      );


    static final customCacheManager = CacheManager(
      Config(
        'customCacheKey',
        stalePeriod: const Duration(days: 30)
      )
    );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 90,
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: buildImage(strMealThumb),
                  // SizedBox(
                  //   height: 80,
                  //   width: 80,
                  //   child: CircleAvatar(
                  //     backgroundImage: NetworkImage(strMealThumb),
                  //   ),
                  // ),
                ),
                Center(
                  child: Text(
                    strMeal.length > 25
                        ? strMeal.substring(0, 25) + "..."
                        : strMeal,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

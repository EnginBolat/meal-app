import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/const_theme_data.dart';

class MealDetailsPageImage extends StatelessWidget {
  const MealDetailsPageImage({
    Key? key,
    required this.strMealThumb,
  }) : super(key: key);

  final String strMealThumb;

  Widget buildImage(String url) => ClipRRect(
        borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
        child: CachedNetworkImage(
          key: UniqueKey(),
          imageUrl: url,
          placeholder: (context, url) =>
              Container(color: appColors.appColor),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      child: buildImage(strMealThumb),
      // Image(
      //   image: NetworkImage(strMealThumb),
      // ),
    );
  }
}

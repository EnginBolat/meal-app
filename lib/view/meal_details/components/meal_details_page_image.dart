import 'package:flutter/cupertino.dart';

class MealDetailsPageImage extends StatelessWidget {
  const MealDetailsPageImage({
    Key? key,
    required this.strMealThumb,
  }) : super(key: key);

  final String strMealThumb;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      child: Image(
        image: NetworkImage(strMealThumb),
      ),
    );
  }
}

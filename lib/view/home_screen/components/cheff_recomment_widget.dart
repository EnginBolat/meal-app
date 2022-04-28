import 'package:flutter/material.dart';
import 'package:meal_app/models/dummy_foods.dart';

class CheffRecommentWidget extends StatelessWidget {
  const CheffRecommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Chef's Recommendation",
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28
              ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 250,
          width: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                foods[1].foodImageLink,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_colors.dart';
import 'package:meal_app/models/dummy_foods.dart';

// ignore: must_be_immutable
class FoodWidget extends StatelessWidget {
   FoodWidget({ Key? key }) : super(key: key);

  AppColors appColors = AppColors();


  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    itemCount: foods.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: appColors.appColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          height: 300,
                          width: 250,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 250,
                                width: 250,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      foods[index].foodImageLink,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                foods[index].foodName,
                                style: Theme.of(context).textTheme.subtitle2,
                              )
                            ],
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
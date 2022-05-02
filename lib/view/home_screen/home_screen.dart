import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_colors.dart';
import 'package:meal_app/view/home_screen/components/categories_widget.dart';
import 'package:meal_app/view/home_screen/components/cheff_recomment_widget.dart';
import 'package:meal_app/view/home_screen/components/countries_widget.dart';
import 'package:meal_app/view/home_screen/components/foods_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  AppColors appColors = AppColors();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    _homeScreenWidgets();
  }

  Widget _homeScreenWidgets() {
    return Column(
      children: [
        CategoriesWidget(),
        const SizedBox(height: 20),
        FoodWidget(),
        CountriesWidget(),
        const SizedBox(height: 50),
        CheffRecommentWidget(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
          child: _homeScreenWidgets(),
        ),
      ),
    );
  }
}

import 'package:client/presentation/home_page.dart';
import 'package:client/presentation/ingredient_list_page.dart';
import 'package:client/presentation/meal_list_page.dart';
import 'package:client/presentation/recepies_list_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const home = '/';
  static const meals = '/meals';
  static const recipe = '/recipe';
  static const ingredient = '/ingredient';
}

Map<String, WidgetBuilder> routes(BuildContext context) => {
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.meals: (context) => const MealListPage(),
  AppRoutes.recipe: (context) => const RecipeListPage(),
  AppRoutes.ingredient: (context) => const IngredientListPage(),
};
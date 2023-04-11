import 'package:client/presentation/meals_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const home = '/';
  // static const search = '/search';
  // static const weather = '/weather';
}

Map<String, WidgetBuilder> routes(BuildContext context) => {
  AppRoutes.home: (context) => const MealPage(),
  // AppRoutes.search: (context) => const SearchCityPage(),
  // AppRoutes.weather: (context) => const WeatherPage(),
};
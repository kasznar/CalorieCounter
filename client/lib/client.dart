import 'package:openapi/api.dart';

class Client {
  late final ApiClient _apiClient;
  late final IngredientsApi _ingredientsApi;
  late final RecepieApi _recepieApi;
  late final MealApi _mealApi;
  late final MealTypesApi _mealTypesApi;

  Client({required String basePath}) {
    _apiClient = ApiClient(basePath: basePath);
    _ingredientsApi = IngredientsApi(_apiClient);
    _recepieApi = RecepieApi(_apiClient);
    _mealApi = MealApi(_apiClient);
    _mealTypesApi = MealTypesApi(_apiClient);
  }

  MealTypesApi get mealTypesApi => _mealTypesApi;

  MealApi get mealApi => _mealApi;

  RecepieApi get recepieApi => _recepieApi;

  IngredientsApi get ingredientsApi => _ingredientsApi;

  ApiClient get apiClient => _apiClient;
}

var client = Client(basePath: "http://10.0.2.2:5073");


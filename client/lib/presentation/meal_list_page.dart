import 'package:client/client.dart';
import 'package:flutter/cupertino.dart';
import 'package:openapi/api.dart';

class MealListPage extends StatefulWidget {
  const MealListPage({Key? key}) : super(key: key);

  @override
  State<MealListPage> createState() => _MealListPageState();
}

class _MealListPageState extends State<MealListPage> {
  List<MealDto> _meals = [];

  void getMeals() async {
    var response = await client.mealApi.mealGet();

    setState(() {
      _meals = response ?? [];
    });
  }

  @override
  void initState() {
    getMeals();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Ingredients'),
      ),
      child: ListView(
        children: [..._meals.map((meal) => MealItem(meal))],
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  final MealDto meal;

  const MealItem(this.meal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(meal.recepieName), Text(meal.quantity.toString())],
    );
  }
}

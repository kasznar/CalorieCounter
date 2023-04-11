import 'package:client/client.dart';
import 'package:flutter/material.dart';
import 'package:openapi/api.dart';

class MealPage extends StatefulWidget {
  const MealPage({Key? key}) : super(key: key);

  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
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
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
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
    return Center(
      child: Row(children: [Text(meal.recepieName), Text(meal.quantity.toString())],),
    );
  }
}

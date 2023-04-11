import 'package:client/client.dart';
import 'package:flutter/cupertino.dart';
import 'package:openapi/api.dart';

class IngredientListPage extends StatefulWidget {
  const IngredientListPage({Key? key}) : super(key: key);

  @override
  State<IngredientListPage> createState() => _IngredientListPageState();
}

class _IngredientListPageState extends State<IngredientListPage> {
  List<Ingredient> _ingredients = [];


  void getIngredients() async {
    var response = await client.ingredientsApi.ingredientsGet();

    print(response);

    setState(() {
      _ingredients = response ?? [];
    });
  }

  @override
  void initState() {
    getIngredients();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Ingredients'),
      ),
      child: ListView(children: [..._ingredients.map((ingredient) => _IngredientItem(ingredient))],),
    );
  }
}

class _IngredientItem extends StatelessWidget {
  final Ingredient ingredient;

  const _IngredientItem(this.ingredient, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(ingredient.name),);
  }
}

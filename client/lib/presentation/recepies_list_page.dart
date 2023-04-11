import 'package:client/client.dart';
import 'package:flutter/cupertino.dart';
import 'package:openapi/api.dart';

class RecipeListPage extends StatefulWidget {
  const RecipeListPage({Key? key}) : super(key: key);

  @override
  State<RecipeListPage> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  List<Recepie> _recipes = [];


  void getRecipes() async {
    var response = await client.recepieApi.recepieGet();

    setState(() {
      _recipes = response ?? [];
    });
  }

  @override
  void initState() {
    getRecipes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Recipes'),
      ),
      child: ListView(children: [..._recipes.map((recipe) => RecipeItem(recipe))],),
    );
  }
}

class RecipeItem extends StatelessWidget {
  final Recepie recipe;

  const RecipeItem(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(recipe.name),);
  }
}

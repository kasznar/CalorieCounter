import 'package:client/routes.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> pages = {
      AppRoutes.meals: "Meals",
      AppRoutes.recipe: "Recipe",
      AppRoutes.ingredient: "Ingredients",
    };

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Calorie Counter'),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...pages.entries.map(
              (e) => Center(
                child: CupertinoButton(
                    onPressed: () => Navigator.pushNamed(context, e.key),
                    child: Text(e.value)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

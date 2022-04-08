import '../Components/appBar.dart';
import '../Controller/c-breakfast.dart';
import '../model/m-recipes.dart';
import 'recipesPage.dart';
import 'package:flutter/material.dart';

class BreakfastPage extends StatelessWidget {
  const BreakfastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'Breakfast Recipes',
      ),
      body: ListView.builder(
        itemCount: ControllerBreakfast.dataLength,
        itemBuilder: (context, index) {
          ModelRecipes breakfast =
              ControllerBreakfast.dataBreakfast.elementAt(index);
          return RecipesPage(data: breakfast);
        },
      ),
    );
  }
}

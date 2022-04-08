import '../Components/appBar.dart';
import '../Controller/c-lunch.dart';
import '../model/m-recipes.dart';
import 'recipesPage.dart';
import 'package:flutter/material.dart';

class LunchPage extends StatelessWidget {
  const LunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'Luch Recipes',
      ),
      body: ListView.builder(
        itemCount: ControllerLunch.dataLength,
        itemBuilder: (context, index) {
          ModelRecipes lunch = ControllerLunch.dataLunch.elementAt(index);
          return RecipesPage(data: lunch);
        },
      ),
    );
  }
}

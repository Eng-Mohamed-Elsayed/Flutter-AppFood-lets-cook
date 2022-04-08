import '../Components/appBar.dart';
import '../Controller/c-dinner.dart';
import '../model/m-recipes.dart';
import 'recipesPage.dart';
import 'package:flutter/material.dart';

class DinnerPage extends StatelessWidget {
  const DinnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'Dinner Recipes',
      ),
      body: ListView.builder(
        itemCount: ControllerDinner.dataLength,
        itemBuilder: (context, index) {
          ModelRecipes lunch = ControllerDinner.dataDinner.elementAt(index);
          return RecipesPage(data: lunch);
        },
      ),
    );
  }
}

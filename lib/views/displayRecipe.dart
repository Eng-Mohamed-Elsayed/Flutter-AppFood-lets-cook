import 'package:flutter/material.dart';
import '../Components/web-view.dart';
import '../model/m-recipes.dart';

class DisplayRecipe extends StatelessWidget {
  const DisplayRecipe({
    required this.data,
  });
  final ModelRecipes data;
  @override
  Widget build(BuildContext context) {
    return AppWebView(url: data.recipeUrl);
  }
}

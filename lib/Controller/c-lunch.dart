import 'dart:collection';

import '../model/m-recipes.dart';
import '../util/image-path.dart';
import '../util/recipes-path.dart';
import '../util/video-path.dart';

class ControllerLunch {
  static List<ModelRecipes> _dataLunch = [
    ModelRecipes(
      image: ImagePath.pasta,
      title: 'Pasta',
      videoUrl: VideoPath.pasta,
      recipeUrl: RecipesPath.pasta,
    ),
    ModelRecipes(
      image: ImagePath.rice,
      title: 'Rice',
      videoUrl: VideoPath.rice,
      recipeUrl: RecipesPath.rice,
    ),
    ModelRecipes(
      image: ImagePath.chicken,
      title: 'Chicken Curry',
      videoUrl: VideoPath.chickenCurry,
      recipeUrl: RecipesPath.chicken,
    ),
    ModelRecipes(
      image: ImagePath.meatballs,
      title: 'MeatBalls',
      videoUrl: VideoPath.meatballs,
      recipeUrl: RecipesPath.meatballs,
    ),
  ];
  static UnmodifiableListView<ModelRecipes> get dataLunch =>
      UnmodifiableListView(_dataLunch);
  static int get dataLength => _dataLunch.length;
}

import 'dart:collection';

import '../model/m-recipes.dart';
import '../util/image-path.dart';
import '../util/recipes-path.dart';
import '../util/video-path.dart';

class ControllerDinner {
  static List<ModelRecipes> _dataDinner = [
    ModelRecipes(
      image: ImagePath.burger,
      title: 'Buger',
      videoUrl: VideoPath.burger,
      recipeUrl: RecipesPath.burger,
    ),
    ModelRecipes(
      image: ImagePath.clubsandwich,
      title: 'Club Sandwich',
      videoUrl: VideoPath.clubSandwich,
      recipeUrl: RecipesPath.clubsandwich,
    ),
    ModelRecipes(
      image: ImagePath.tacos,
      title: 'Tacos',
      videoUrl: VideoPath.tacos,
      recipeUrl: RecipesPath.tacos,
    ),
    ModelRecipes(
      image: ImagePath.burrito,
      title: 'Burrito Bowl',
      videoUrl: VideoPath.burrito,
      recipeUrl: RecipesPath.burrito,
    ),
  ];
  static UnmodifiableListView<ModelRecipes> get dataDinner =>
      UnmodifiableListView(_dataDinner);
  static int get dataLength => _dataDinner.length;
}

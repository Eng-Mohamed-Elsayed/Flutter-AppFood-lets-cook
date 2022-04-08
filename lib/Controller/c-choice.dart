import 'dart:collection';
import '../model/m-choice.dart';
import '../util/image-path.dart';
import '../views/breakfastPage.dart';
import '../views/dinnerPage.dart';
import '../views/lunchPage.dart';

class ControllerChoice {
  static List<ModelChoice> _dataChoice = [
    ModelChoice(
      imagePath: ImagePath.breakfast,
      page: BreakfastPage(),
    ),
    ModelChoice(
      imagePath: ImagePath.lunch,
      page: LunchPage(),
    ),
    ModelChoice(
      imagePath: ImagePath.dinner,
      page: DinnerPage(),
    ),
  ];
  static UnmodifiableListView<ModelChoice> get dataChoice =>
      UnmodifiableListView(_dataChoice);
  static int get dataLength => _dataChoice.length;
}

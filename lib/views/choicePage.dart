import '../Components/appBar.dart';
import '../Components/choice-cards.dart';
import '../Controller/c-choice.dart';
import '../model/m-choice.dart';
import 'package:flutter/material.dart';

class ChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(title: 'What do you want to eat?'),
      body: ListView.builder(
        itemCount: ControllerChoice.dataLength,
        itemBuilder: (context, index) {
          ModelChoice choice = ControllerChoice.dataChoice.elementAt(index);
          return ChoiceCards(data: choice);
        },
      ),
    );
  }
}

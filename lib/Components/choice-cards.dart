import '../model/m-choice.dart';
import 'package:flutter/material.dart';

class ChoiceCards extends StatelessWidget {
  ChoiceCards({required this.data});
  final ModelChoice data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => data.page));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            data.imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

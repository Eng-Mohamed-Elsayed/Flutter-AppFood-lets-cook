import '../model/m-recipes.dart';
import '../views/display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipesCards extends StatelessWidget {
  RecipesCards({required this.data});
  final ModelRecipes data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Display(data: data),
            ));
      },
      child: Container(
        height: 140,
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  data.image,
                  height: 140,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  data.title,
                  style: GoogleFonts.acme(
                      fontWeight: FontWeight.bold, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

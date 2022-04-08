import 'choicePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/food.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cloudn't Decide What to Eat ",
              style:
                  GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChoicePage()));
              },
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black, width: 1.0),
                primary: Colors.white10,
                onPrimary: Colors.black,
              ),
              child: Text(
                'Let Me Help You',
                style: GoogleFonts.acme(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

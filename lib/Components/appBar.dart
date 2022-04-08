import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarSimple extends StatelessWidget with PreferredSizeWidget {
  final String title;

  AppBarSimple({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink.shade100,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(title,
          style: GoogleFonts.acme(color: Colors.black, fontSize: 30)),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

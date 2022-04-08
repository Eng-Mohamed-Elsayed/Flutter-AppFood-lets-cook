import '../Components/appBar.dart';
import '../Components/bottom-bar.dart';
import '../model/m-recipes.dart';
import 'displayRecipe.dart';
import 'displayVideo.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  final ModelRecipes data;
  Display({required this.data});
  @override
  _Display createState() => _Display();
}

class _Display extends State<Display> {
  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      DisplayRecipe(data: widget.data),
      DisplayVideo(data: widget.data)
    ];
    return Scaffold(
      appBar: AppBarSimple(
        title: widget.data.title,
      ),
      body: _pages[_indexPage],
      bottomNavigationBar: BottomBar(
        indexPage: _indexPage,
        onClick: (index) {
          setState(() {
            _indexPage = index;
          });
        },
      ),
    );
  }
}

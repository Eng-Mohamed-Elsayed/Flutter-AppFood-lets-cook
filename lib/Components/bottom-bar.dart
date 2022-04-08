import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({
    required this.indexPage,
    required this.onClick,
  });

  final int indexPage;
  final Function(int) onClick;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: indexPage,
      color: Colors.pink,
      backgroundColor: Colors.grey.shade50,
      items: [
        Icon(
          Icons.article,
          color: indexPage == 0 ? Colors.white : Colors.grey,
        ),
        Icon(
          Icons.video_library,
          color: indexPage == 1 ? Colors.white : Colors.grey,
        ),
      ],
      onTap: onClick,
    );
  }
}

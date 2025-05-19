import 'package:flutter/material.dart';
import 'package:jawad_project/grid_view_demo.dart';
import 'package:jawad_project/multiple_selection.dart';
import 'package:jawad_project/single_selection.dart';

class BottomBarDemo extends StatefulWidget {
  BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int currentIndex = 0;

  List<Widget> screenList = [
    SingleSelectionDemo(),
    MultipleSelectionDemo(),
    GridViewDemo()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            currentIndex = val;
            setState(() {});
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_classroom/view/class_screen/class_screen.dart';
import 'package:google_classroom/view/classwork_screen/classwork_screen.dart';
import 'package:google_classroom/view/people_screen/people_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key, required this.index});
  final int index;
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late int _index;
  @override
  void initState() {
    super.initState();
    _index = widget.index;
  }

  late List screens = [
    ClassScreen(index: _index),
    ClassWorkScreen(),
    PeopleScreen()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                label: "Stream",
                icon: Icon(
                  Icons.forum_outlined,
                )),
            BottomNavigationBarItem(
                label: "Classwork",
                icon: Icon(
                  Icons.assignment_outlined,
                )),
            BottomNavigationBarItem(
                label: "People",
                icon: Icon(
                  Icons.people_alt_outlined,
                ))
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_classroom/view/class_about_screen/class_about_screen.dart';
import 'package:google_classroom/view/home_screen/home_screen.dart';
import 'package:google_classroom/view/join_class/join_class.dart';
import 'package:google_classroom/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const Classroom());
}

class Classroom extends StatelessWidget {
  const Classroom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/join': (context) => JoinClass(),
        '/class_about': (context) => ClassAboutScreen(),
      },
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_web_profile/cv_screen.dart';
import 'package:my_web_profile/home_screen.dart';
import 'package:my_web_profile/skills_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fahad Alazmi",
      // home: // body: HomeScreen(),
      //     const SkillsScreen(),
      initialRoute: '/home',
      routes: {
        "/home": (context) => const HomeScreen(),
        "/skills": (context) => const SkillsScreen(),
        "/resume": (context) => const CvScreen()
      },
    );
  }
}

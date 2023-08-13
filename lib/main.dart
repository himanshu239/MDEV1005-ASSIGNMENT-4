import 'package:assignment_4/Screens/greetings_screen.dart';
import 'package:assignment_4/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Assignment 4',  // Set the title of the app
      theme: ThemeData(
        primaryColor: CupertinoColors.systemGrey2,  // Set the primary color theme
      ),
      home: const GreetingsScreen(),  // Set the initial screen of the app
      debugShowCheckedModeBanner: false,  // Hide the debug banner
      routes: {
        HomeScreen.path: (context) => const HomeScreen(),  // Define named route for HomeScreen
      },
    );
  }
}

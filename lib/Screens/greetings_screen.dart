import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class GreetingsScreen extends StatefulWidget {
  const GreetingsScreen({super.key});

  @override
  State<GreetingsScreen> createState() => _GreetingsScreenState();
}

class _GreetingsScreenState extends State<GreetingsScreen> {
  @override
  void initState() {
    super.initState();
    // Delay the navigation to HomeScreen after 3 seconds
    Future.delayed(
      const Duration(seconds: 3),
          () => Get.toNamed(HomeScreen.path),  // Navigate to HomeScreen using the named route
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/pexels-markus-spiske-1089438.jpg',  // Display a background image
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Welcome',
            style: TextStyle(color: Colors.white, fontSize: 35),  // Set the text style
          ),
        ),
      ),
    );
  }
}

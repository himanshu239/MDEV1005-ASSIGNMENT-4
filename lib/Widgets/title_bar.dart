import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({required this.title, super.key});

  final String title; // The title text to be displayed

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width, // Set the width of the widget to match the screen width
      child: Card(
        elevation: 4, // Set the elevation level for the card
        child: Padding(
          padding: const EdgeInsets.all(10), // Add padding around the content
          child: Text(
            title, // Display the provided title text
            textAlign: TextAlign.center, // Center-align the text
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25), // Set the text style
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormattedTimer extends StatelessWidget {
  const FormattedTimer({super.key, required this.seconds});

  final int seconds; // The input time in seconds

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration(
        seconds: seconds); // Create a Duration object from the provided seconds
    // Create a formatted string representing the minutes and seconds
    var text =
        '${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
    return Text(
      text, // Display the formatted time string
      style: const TextStyle(fontSize: 36), // Set the font size for the text
    );
  }
}

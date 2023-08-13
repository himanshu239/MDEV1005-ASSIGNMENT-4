import 'package:assignment_4/Tabs/notes_tab.dart';
import 'package:assignment_4/Tabs/stopwatch_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;  // Observable integer to track the selected tab index
  List<Widget> myTabs = [const NotesTab(), const StopwatchTab()];  // List of tab widgets

  String get myTitle => index.value == 0 ? 'Notes' : 'Stopwatch';  // Get the title based on the selected tab

  void onTabChange(int page) {
    index.value = page;  // Update the selected tab index
    update();  // Notify listeners about the changes
  }
}

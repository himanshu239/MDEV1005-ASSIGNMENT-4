import 'package:assignment_4/Controllers/bottom_nav_controller.dart';
import 'package:assignment_4/Widgets/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String path = '/home';  // Define a named route path for navigation

  @override
  Widget build(BuildContext context) {
    return GetBuilder(  // Use GetBuilder to observe and update the state from the controller
      init: Get.put(BottomNavController()),  // Initialize the controller and add it to the GetX dependency tree
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              TitleBar(title: controller.myTitle),  // Display the TitleBar widget with the title from the controller
              controller.myTabs.elementAt(controller.index.value),  // Display the selected tab content
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.index.value,  // Set the current index based on the controller's value
            onTap: controller.onTabChange,  // Call the onTabChange function from the controller when a tab is tapped
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.note_add),
                label: 'Notes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.watch_later),
                label: 'Stopwatch',
              ),
            ],
          ),
        );
      },
    );
  }
}

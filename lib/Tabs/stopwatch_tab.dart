import 'package:assignment_4/Controllers/stopwatch_controller.dart';
import 'package:assignment_4/Widgets/formatted_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StopwatchTab extends StatelessWidget {
  const StopwatchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(  // Use GetBuilder to observe and update the state from the controller
      init: Get.put(StopwatchController()),  // Initialize the controller and add it to the GetX dependency tree
      builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormattedTimer(seconds: controller.seconds.value),  // Display the formatted timer using the controller's value
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!controller.isRunning.value)  // Display 'Start' button if the stopwatch isn't running
                    ElevatedButton(
                      onPressed: controller.startStopwatch,  // Call the startStopwatch function from the controller
                      child: const Text('Start'),
                    ),
                  if (controller.isRunning.value)  // Display 'Stop' button if the stopwatch is running
                    ElevatedButton(
                      onPressed: controller.stopStopwatch,  // Call the stopStopwatch function from the controller
                      child: const Text('Stop'),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: controller.resetStopwatch,  // Call the resetStopwatch function from the controller
                      child: const Text('Reset'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:get/get.dart';

class StopwatchController extends GetxController {
  RxBool isRunning = false.obs;  // Observable boolean for tracking the stopwatch state
  RxInt seconds = 0.obs;  // Observable integer for tracking the elapsed time in seconds

  void resetStopwatch() {
    isRunning.value = false;  // Set the stopwatch state to not running
    seconds.value = 0;  // Reset the elapsed time to zero
    update();  // Notify listeners about the changes
  }

  void startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (isRunning.value) {  // If the stopwatch is running
        seconds.value += 1;  // Increment the elapsed time by one second
        update();  // Notify listeners about the changes
        startTimer();  // Recursively call startTimer to continue the timer
      }
    });
  }

  void startStopwatch() {
    isRunning.value = true;  // Set the stopwatch state to running
    startTimer();  // Start the timer to count the elapsed time
    update();  // Notify listeners about the changes
  }

  void stopStopwatch() {
    isRunning.value = false;  // Set the stopwatch state to not running
    update();  // Notify listeners about the changes
  }
}

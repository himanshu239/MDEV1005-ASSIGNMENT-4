import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  RxList<String> myNotes = <String>[].obs;  // Observable list to store notes

  TextEditingController notesText = TextEditingController();  // Text controller for the input field

  void addNote(String note) {
    myNotes.add(note);  // Add the provided note to the list
    notesText.clear();  // Clear the input field
    update();  // Notify listeners about the changes
  }

  void clearAllNotes() {
    myNotes.clear();  // Clear all notes from the list
    update();  // Notify listeners about the changes
  }
}

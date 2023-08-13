import 'package:assignment_4/Controllers/notes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesTab extends StatelessWidget {
  const NotesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(  // Use GetBuilder to observe and update the state from the controller
      init: Get.put(NotesController()),  // Initialize the controller and add it to the GetX dependency tree
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(  // Display a dialog for adding a new note
                        title: 'Add Note',
                        content: TextFormField(
                          controller: controller.notesText,  // Bind the text field to the controller's value
                          onChanged: (value) {},
                          decoration:
                          const InputDecoration(labelText: 'Enter your note'),
                        ),
                        confirm: ElevatedButton(
                          onPressed: () {
                            String note = controller.notesText.text;
                            if (note.isNotEmpty) {
                              controller.addNote(note);  // Call the addNote function from the controller
                            }
                            Get.back();  // Close the dialog
                          },
                          child: const Text('Add'),
                        ),
                      );
                    },
                    child: const Text('Add Note'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ElevatedButton(
                      onPressed: controller.clearAllNotes,  // Call the clearAllNotes function from the controller
                      child: const Text('Clear All Notes'),
                    ),
                  ),
                ],
              ),
              Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.myNotes.length,  // Set the number of items in the list
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(controller.myNotes[index]));  // Display each note from the controller's list
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

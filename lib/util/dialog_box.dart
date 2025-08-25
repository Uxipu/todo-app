import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            //buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                  color: const Color(0xFFFFE082),
                ),

                const SizedBox(width: 8),

                // Cancel button
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                  color: const Color(0xFFFFF9C4),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/button.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  Dialogbox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Create new task"),
      backgroundColor: Colors.blue[200],
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Task name",
                    border: OutlineInputBorder(),
                    fillColor: Colors.blue[50],
                    filled: true
                  ),
                 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Save button
                  Button(text: "Save", onPressed: onSave),
                  const SizedBox(width: 10),
                  //Cancel button
                  Button(text: "Cancel", onPressed: onCancel),
                ],
              )
              ],
            )
            
          ]),
      ),
    );
  }
}
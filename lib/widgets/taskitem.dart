// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget {
  
  final String taskName;
  final bool taskState;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  
  TaskItem({
    super.key, 
    required this.taskName, 
    required this.taskState, 
    required this.onChanged,
    required this.deleteFunction
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: BehindMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(15),
            )
          ]),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              //Checkbox
              Checkbox(value: taskState, onChanged: onChanged),
              //Task name
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskState ? TextDecoration.lineThrough : TextDecoration.none
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
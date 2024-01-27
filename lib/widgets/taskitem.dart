// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_todo/model/task.dart';

class TaskItem extends StatelessWidget{
  TaskItem({super.key, required this.task});
  Task task;

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(task.name),
      trailing: Icon(Icons.more_vert),
      tileColor: Colors.amber[100],
    );
  }
}
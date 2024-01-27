// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_todo/model/task.dart';
import 'package:flutter_todo/widgets/sidebar.dart';
import 'package:flutter_todo/widgets/taskitem.dart';

class TaskList extends StatelessWidget {
  TaskList({super.key, this.tasks});
  List<Task>? tasks;

  void addTask() {
    print("FAB");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar:
          AppBar(title: Text("TaskList"), backgroundColor: Colors.blue[100]),
      drawer: SideBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addTask(),
        child: const Icon(
          Icons.add_task,
          ),
        ),
      body: ListView(
        children: [TaskItem(task: Task(name: "Task 1", state: TaskState.notStarted, type: TaskType.task),),],
      ),
      );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_print, empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/dialogbox.dart';
import 'package:flutter_todo/widgets/sidebar.dart';
import 'package:flutter_todo/widgets/taskitem.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  //text controller
  final _controller = TextEditingController();

  //List of task
  List tasks = [
    ["First task", false],
    ["Second task", false]
  ];

  //Checkbox clicked
  void checkBoxChanged(bool? value, int index){
    setState(() {
      tasks[index][1] = !tasks[index][1];
    });
  }
  
  void saveNewTask(){
    setState(() {
      tasks.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void cancelTaskCreation(){
    setState(() {
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask()
  {
    showDialog(context: context, builder: (context){
      return Dialogbox(
        controller: _controller, 
        onSave: saveNewTask, 
        onCancel:cancelTaskCreation,
      );
    });  
  }

  void deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Task list"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add_task),
        ),
      drawer: SideBar(),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskItem(
            taskName: tasks[index][0], 
            taskState: tasks[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),);
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TaskList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = Provider.of<TaskData>(context).tasks[index];
      return TaskTile(
        taskTitle: task.name,
        isChecked: task.isDone,
        checkBoxCallback: (checkBoxState){
          Provider.of<TaskData>(context).updateTask(task);
        },
        longPressCallback: (){
          Provider.of<TaskData>(context).deleteTask(task);
        },
      );
    }, itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TaskAddScreen extends StatelessWidget {

  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task', textAlign: TextAlign.center, style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTaskTitle = newValue;
              },
            ),
            SizedBox(height: 5.0),
            FlatButton(
              child: Text('Add', style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
              onPressed: (){
               Provider.of<TaskData>(context).addTask(newTaskTitle);
               Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

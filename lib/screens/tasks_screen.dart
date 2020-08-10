import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_add_screen.dart';
import 'package:todoeyflutter/widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => TaskAddScreen(),
          );
        },
      ),

      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0, right: 30.0, left: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    child: Icon(Icons.list, size: 30.0, color: Colors.lightBlue,),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                ),
                SizedBox(height: 10.0,),
                Text('Todoey', style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),),
                Text('${Provider.of<TaskData>(context).taskCount} tasks', style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}



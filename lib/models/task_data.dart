import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy chocolate'),
    Task(name: 'buy shawrma'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTitle){
    final task = Task(name: newTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.togglesDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
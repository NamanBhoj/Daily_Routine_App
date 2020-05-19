import 'package:flutter/material.dart';
import 'TaskInfo.dart';

class TaskData extends ChangeNotifier {
  List<TaskInfo> tasks = [
    TaskInfo(name: "Buy  Milk"),
    TaskInfo(name: 'Get Sugar')
  ];

  void addtask(String taskadded) {
    final task1 = TaskInfo(name: taskadded);
    tasks.add(task1);
    notifyListeners();
  }

  void updateTask(TaskInfo tasks) {
    tasks.ToggleDone();
    notifyListeners();
  }
}

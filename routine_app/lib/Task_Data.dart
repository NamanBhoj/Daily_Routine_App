import 'package:flutter/material.dart';
import 'TaskInfo.dart';

class TaskData extends ChangeNotifier {
  List<TaskInfo> tasks = [
    TaskInfo(name: "Buy  Milk"),
    TaskInfo(name: 'Get Sugar')
  ];
}

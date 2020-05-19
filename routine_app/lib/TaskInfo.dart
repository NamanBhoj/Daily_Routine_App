import 'package:flutter/material.dart';

class TaskInfo {
  final String name;
  bool isDone;

  TaskInfo({this.name, this.isDone = false});

  void ToggleDone() {
    isDone = !isDone;
  }
}

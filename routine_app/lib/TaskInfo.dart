import 'package:flutter/material.dart';

class TaskInfo {
  final String name;
  bool isDone = false;

  TaskInfo({this.name, this.isDone});

  void ToggleDone() {
    isDone = !isDone;
  }
}

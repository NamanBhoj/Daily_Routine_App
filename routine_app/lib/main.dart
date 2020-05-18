import 'package:flutter/material.dart';
import 'package:routineapp/TaskInfo.dart';
import 'Task.dart';
import 'package:provider/provider.dart';
import 'Task_Data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: Task(),
      ),
    );
  }
}

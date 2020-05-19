import 'package:flutter/material.dart';
import 'Tileinfo.dart';
import 'Task_Data.dart';
import 'package:provider/provider.dart';

class ListOfTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TileInfo(
          text: Provider.of<TaskData>(context).tasks[index].name,
          checked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (checkboxstate) {
            TaskData().updateTask(TaskData().tasks[index]);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}

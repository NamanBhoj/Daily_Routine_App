import 'package:flutter/material.dart';
import 'Task.dart';
import 'package:provider/provider.dart';
import 'Task_Data.dart';
import 'TaskInfo.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskadded;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newtask) {
                taskadded = newtask;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Add',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addtask(taskadded ?? 'task added');
                Navigator.pop(context);
                print('hello');
              },
            )
          ],
        ),
      ),
      //child: Text('Hey'),
    );
  }
}

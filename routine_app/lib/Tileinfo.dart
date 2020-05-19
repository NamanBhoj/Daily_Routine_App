import 'package:flutter/material.dart';

import 'Task_Data.dart';
import 'package:provider/provider.dart';
// I HAVE DONE GLOBAL STATE MANAGEMENT HERE WHERE I HAVE SHARED THE DATA
// VARIABLE OF OUR CHECKBOX WITH THE STRING.
//Now we are using  provider package for state management

class TileInfo extends StatelessWidget {
  final bool checked;
  final String text;
  final Function checkboxCallback;

  TileInfo({
    this.checked,
    this.text,
    this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          text,
          style: TextStyle(
              fontSize: 20.0,
              decoration: checked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(value: checked, onChanged: checkboxCallback));
  }
}

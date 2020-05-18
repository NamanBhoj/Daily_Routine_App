import 'package:flutter/material.dart';

// I HAVE DONE GLOBAL STATE MANAGEMENT HERE WHERE I HAVE SHARED THE DATA
// VARIABLE OF OUR CHECKBOX WITH THE STRING.

class TileInfo extends StatefulWidget {
  final String text;
  final bool checked;
  TileInfo({@required this.text, this.checked});

  @override
  _TileInfoState createState() => _TileInfoState();
}

class _TileInfoState extends State<TileInfo> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          widget.text,
          style: TextStyle(
              fontSize: 20.0,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckBox(
            Checked: isChecked,
            toperform: (newvalue) {
              setState(() {
                isChecked = newvalue;
              });
            }));
  }
}

class TaskCheckBox extends StatelessWidget {
  bool Checked;
  Function toperform;

  TaskCheckBox({@required this.Checked, @required this.toperform});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: Checked,
      onChanged: toperform,
    );
  }
}

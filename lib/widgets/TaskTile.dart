import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String titleStr;
  final bool isChecked;
  final Function checkBoxCallBack;
  final Function deleteCallBack;

  TaskTile({this.titleStr, this.isChecked, this.checkBoxCallBack, this.deleteCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallBack,
      title: Text(titleStr,
        style: TextStyle(
          decoration: (isChecked) ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      )
    );
  }
}


import 'package:flutter/material.dart';
import 'package:todoflutter/Models/TaskData.dart';
import 'TaskTile.dart';
import 'package:provider/provider.dart';


class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {

        return ListView.builder(itemBuilder: (context, index) {

          return TaskTile(
              titleStr: taskData.tasksArray[index].title,
              isChecked: taskData.tasksArray[index].isDone,
              checkBoxCallBack: (checkBoxState) {
                Provider.of<TaskData>(context, listen: false).taskDoneUpdate(index);
              },
              deleteCallBack: () {
                Provider.of<TaskData>(context, listen: false).taskDeleted(index);
              }
          );
        },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}


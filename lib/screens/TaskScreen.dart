import 'package:flutter/material.dart';
import 'package:todoflutter/Models/TaskData.dart';
import 'package:todoflutter/widgets/TaskList.dart';
import 'AddTaskScreen.dart';
import 'package:todoflutter/Models/Task.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context,
              builder: (context) => AddTaskScreen(),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list, size: 30, color: Colors.lightBlueAccent),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 30),
                Text(
                  'Today',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Task',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              height: 300,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}




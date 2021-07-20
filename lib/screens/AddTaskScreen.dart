import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/Models/TaskData.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String addedTask;

    return Container(
      color: Color.fromRGBO(98, 98, 98, 0.9),//('#626262'),//,
      child: Container(
        padding: EdgeInsets.only(top: 30, left: 60, right: 60),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                  fontSize: 20
                ),
            ),
            TextField(
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              autofocus: true,
              onChanged: (textFieldText){
                addedTask = textFieldText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTaskIntoArr(addedTask);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

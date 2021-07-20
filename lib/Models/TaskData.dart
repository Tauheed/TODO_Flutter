import 'package:flutter/foundation.dart';
import 'package:todoflutter/Models/Task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasksArray = [
    Task(title: 'Buy Bread', isDone: false),
    Task(title: 'Buy Milk', isDone: true),
    Task(title: 'Buy Eggs', isDone: false)
  ];

  int get taskCount {
    return tasksArray.length;
  }

  void addTaskIntoArr(String taskStr) {
    var taskObj = Task(title: taskStr, isDone: false);
    tasksArray.add(taskObj);
    notifyListeners();
  }

  void taskDoneUpdate(int atIndex) {
    tasksArray[atIndex].isDone = !tasksArray[atIndex].isDone;
    notifyListeners();
  }

  void taskDeleted(int atIndex) {
    tasksArray.removeAt(atIndex);
    notifyListeners();     
  }
}
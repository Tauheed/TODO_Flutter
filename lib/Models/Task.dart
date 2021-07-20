

class Task {

  String title;
  bool isDone;

  Task({this.title, this.isDone});

  void isDoneTask() {
    this.isDone = !isDone;
  }
}
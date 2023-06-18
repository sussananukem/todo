class TaskModel {
  String taskTitle;
  bool isDone;

  TaskModel({
    required this.taskTitle,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}

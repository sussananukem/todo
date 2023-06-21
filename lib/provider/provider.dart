import 'package:flutter/cupertino.dart';

import '../models/task_model.dart';

class Data extends ChangeNotifier {
  List<TaskModel> taskModels = [
    TaskModel(
      taskTitle: 'Enable Add Task Functionality',
    ),
    TaskModel(
      taskTitle: 'Learn Providers',
    ),
    TaskModel(
      taskTitle: 'Implement Providers in GardenQuest',
    ),
  ];

  void addTask(String newText) {
    final task = TaskModel(taskTitle: newText);
    taskModels.add(task);
    notifyListeners();
  }

  void toggle(bool? newValue, int index) {
    taskModels[index].toggleDone();
    notifyListeners();
  }

  int get tasksCount {
    return taskModels.length;
  }
}

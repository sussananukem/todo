import 'dart:collection';

import 'package:flutter/cupertino.dart';

import '../models/task_model.dart';

class Data extends ChangeNotifier {
  final List<TaskModel> _taskModels = [
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

  UnmodifiableListView<TaskModel> get taskModels{
    return UnmodifiableListView(_taskModels);
  }

  void addTask(String newText) {
    final task = TaskModel(taskTitle: newText);
    _taskModels.add(task);
    notifyListeners();
  }

  void toggle(bool? newValue, int index) {
    _taskModels[index].toggleDone();
    notifyListeners();
  }

  int get tasksCount {
    return _taskModels.length;
  }
}

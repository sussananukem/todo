import 'package:flutter/cupertino.dart';

import '../models/task_model.dart';

class Data extends ChangeNotifier{
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

  void addTask(String newText){
    taskModels.add(
      TaskModel(taskTitle: newText),
    );
    notifyListeners();
  }

  void toggle(bool? newValue, int index){
    taskModels[index].toggleDone();
    notifyListeners();
  }
}
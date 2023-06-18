import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';

import '../models/task_model.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<TaskModel> taskModel = [
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: taskModel[index].isDone,
          taskTitle: taskModel[index].taskTitle,
          toggleStateFunction: (bool? newValue) {
            setState(() {
              taskModel[index].toggleDone();
            });
          },
        );
      },
      itemCount: taskModel.length,
    );
  }
}

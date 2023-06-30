import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/widgets/task_tile.dart';

import '../provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.taskModels[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.taskTitle,
              toggleStateFunction: (_) {
                taskData.toggle(task);
              },
              removeTask: () => taskData
                  .deleteTask(task),
            );
          },
          itemCount: taskData.tasksCount,
        );
      },
    );
  }
}

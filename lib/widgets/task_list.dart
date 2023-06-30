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
      builder: (context, data, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked:  data.taskModels[index].isDone,
              taskTitle: data.taskModels[index].taskTitle,
              toggleStateFunction: (_) {
                Provider.of<TaskData>(context, listen: false).toggle
                  (data.taskModels[index]);
              },
            );
          },
          itemCount: data.tasksCount,
        );
      },

    );
  }
}

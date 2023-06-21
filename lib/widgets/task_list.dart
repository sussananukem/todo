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
    return Consumer<Data>(
      builder: (context, data, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked:  data.taskModels[index].isDone,
              taskTitle: data.taskModels[index].taskTitle,
              toggleStateFunction: (bool? newValue) {
                Provider.of<Data>(context, listen: false).toggle(newValue, index);
              },
            );
          },
          itemCount: data.tasksCount,
        );
      },

    );
  }
}

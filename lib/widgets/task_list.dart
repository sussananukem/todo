import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/widgets/task_tile.dart';

import '../models/task_model.dart';
import '../provider/provider.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked:  Provider.of<Data>(context).taskModels[index].isDone,
          taskTitle: Provider.of<Data>(context).taskModels[index].taskTitle,
          toggleStateFunction: (bool? newValue) {
            Provider.of<Data>(context, listen: false).toggle(newValue, index);
          },
        );
      },
      itemCount: Provider.of<Data>(context).taskModels.length,
    );
  }
}

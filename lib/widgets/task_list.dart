import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';

import '../models/task_model.dart';

class TaskList extends StatefulWidget {
  final List<TaskModel> taskModel;

  const TaskList({
    super.key,
    required this.taskModel,
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
          isChecked: widget.taskModel[index].isDone,
          taskTitle: widget.taskModel[index].taskTitle,
          toggleStateFunction: (bool? newValue) {
            setState(() {
              widget.taskModel[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.taskModel.length,
    );
  }
}

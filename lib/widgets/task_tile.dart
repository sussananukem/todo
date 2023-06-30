import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final VoidCallback removeTask;
  final Function(bool?) toggleStateFunction;
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.toggleStateFunction, required this.removeTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: removeTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleStateFunction,
      ),
    );
  }
}

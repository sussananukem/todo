import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleStateFunction;
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.toggleStateFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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

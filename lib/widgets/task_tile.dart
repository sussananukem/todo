import 'package:flutter/material.dart';
import 'package:todo/widgets/task_check_box.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleStateFunction: (bool? checkBoxState) {
          setState(() {
            isChecked = checkBoxState!;
          });
        },
      ),
    );
  }
}

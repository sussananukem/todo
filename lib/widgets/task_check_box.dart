import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    super.key, required this.checkBoxState, required this.toggleStateFunction,
  });
final bool checkBoxState;
final Function(bool?)? toggleStateFunction;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleStateFunction,
    );
  }
}

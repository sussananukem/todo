import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 24,
              fontWeight: FontWeight.w600
             ),
          ),
          const SizedBox(height: 30,),
         TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {},
          ),
          const SizedBox(height: 50,),

          TextButton(
            onPressed: () {},
             style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

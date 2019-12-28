import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/providers/todos_model.dart';
import 'package:todoapp_provider/widgets/task_list.dart';

class AllTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.allTasks,
        ),
      ),
    );
  }
}

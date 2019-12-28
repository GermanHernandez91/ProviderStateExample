import 'package:flutter/material.dart';
import 'package:todoapp_provider/models/task.dart';
import 'package:todoapp_provider/widgets/task_list_item.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;

  const TaskList({@required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTasks(),
    );
  }

  List<Widget> getChildrenTasks() {
    return tasks.map((todo) => TaskListItem(task: todo)).toList();
  }
}

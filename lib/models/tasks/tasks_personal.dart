import 'package:flutter/foundation.dart';

class TasksPersonal {
  String taskName;
  int timeEstimate;
  int dueDate;

  TasksPersonal({
    @required this.taskName,
    @required this.timeEstimate,
    @required this.dueDate,
  });

  Map<String, dynamic> toJson() {
    return {
      "taskName": taskName,
      "timeEstimate": timeEstimate,
      "dueDate": dueDate,
    };
  }
}

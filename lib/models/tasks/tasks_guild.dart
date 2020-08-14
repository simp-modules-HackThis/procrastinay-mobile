import 'package:flutter/foundation.dart';
import 'package:procrastinay/screens/guild/guild.dart';

class TasksGuild {
  String taskName;
  String guildID;
  int timeEstimate;
  int dueDate;

  TasksGuild({
    @required this.taskName,
    @required this.timeEstimate,
    @required this.dueDate,
    @required this.guildID,
  });

  Map<String, dynamic> toJson() {
    return {
      "taskName": taskName,
      "timeEstimate": timeEstimate,
      "dueDate": dueDate,
      "guildID": guildID,
    };
  }
}
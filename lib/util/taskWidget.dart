import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'user.dart';

class taskWidget extends StatelessWidget {
  @override
  Task task = new Task(1, "Finish Calc", new User("James"));

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        child: Row(
          children: [
            task.isComplete
                ? Icon(Icons.check_box)
                : Icon(Icons.check_box_outline_blank),
            Column(
              children: [
                Row(children: [
                  Expanded(
                    child: Align(alignment: Alignment.centerRight, child: Text("Test")),
                  )
                ]

                )
              
              ],
            )
          ],
        ));
  }
}

class Task {
  int id;
  String name;
  User user;
  bool isComplete = false;

  Task(id, name, user) {
    this.id = id;
    this.name = name;
    this.user = user;
  }
}

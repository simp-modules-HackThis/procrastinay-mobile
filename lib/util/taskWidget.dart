import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'user.dart';

class taskWidget extends StatelessWidget{
  @override
  Task task = new Task(1, "Finish Calc", new User("James"));

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: task.isComplete? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank)
        ),
        Expanded(
          child: Text(task.name, textAlign: TextAlign.center),
        ),
        Expanded(
            child: Text(task.user.username)
        ),
      ],
    );
  }
}

class Task{
  int id;
  String name;
  User user;
  bool isComplete = true;

  Task(id, name, user){
    this.id = id;
    this.name = name;
    this.user = user;
  }
}
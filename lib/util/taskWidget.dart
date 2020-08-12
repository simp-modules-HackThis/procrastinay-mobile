import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'user.dart';

class taskWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}

class Task{
  int id;
  String name;
  User user;

  Task(id, name, user){
    this.id = id;
    this.name = name;
    this.user = user;
  }
}
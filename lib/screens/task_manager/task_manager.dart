import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:procrastinay/util/inputWidget.dart';
import 'package:procrastinay/util/roundedRectButton.dart';

import '../background.dart';

class TaskManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: new AppBar(
          title: const Text('Task Creator'),
        ),
        body: Form(
            child: Column(children: [
          ...[
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Name of New Task',
                  labelText: 'Task'),
            ),
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Ex: 30 minutes',
                  labelText: 'Time Estimate'),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            RaisedButton(
              color: Color(0xFF6F4E37),
              textColor: Color(0xFFE6E1DB),
              disabledColor: Color(0xFF6F4E37),
              disabledTextColor: Color(0xFFE6E1DB),
              child: Text('Add New Task'),
              onPressed: () {
                //todo make it so that it creates a new task
                null;
              },
            )
          ]
        ])));
  }
}

/* app bar - text
container - column - (text + text input widget)    + (text + time input widget) + (text + calandar)
 */

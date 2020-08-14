import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:procrastinay/screens/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Creator',
      home: TaskManager(),
    );
  }
}

class TaskManager extends StatefulWidget {
  @override
  _TaskManagerState createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 3,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                backgroundColor: Colors.brown,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                title: Text("New Task"),
                backgroundColor: Colors.brown,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                title: Text("Guilds"),
                backgroundColor: Colors.brown,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                backgroundColor: Colors.brown,
              )
            ],
            onTap: (index) {
              print(index);
            }),
        appBar: new AppBar(
          title: const Text('               Task Creator'),
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
            TextFormField(
                decoration: InputDecoration(
              filled: true,
              hintText: '08/19/2020',
              labelText: 'Deadline',
            )),
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
            ),
          ]
        ])));
  }
}

/* app bar - text
container - column - (text + text input widget)    + (text + time input widget) + (text + calandar)
 */

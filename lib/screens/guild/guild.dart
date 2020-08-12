import 'package:flutter/material.dart';
import 'package:procrastinay/screens/profile/profile.dart';
import 'package:procrastinay/util/taskWidget.dart';

void main() => runApp(Guild());

class Guild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guilds',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              tooltip: 'Profile',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserProfilePage())
                );
              },
          )],
        ),
        body: Container(
          child: taskWidget(),
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(Guild());

class Guild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
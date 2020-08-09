import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // 1
        appBar: new AppBar(
          //2
          title: new Text("Login or Register"),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: new Container(
            // decoration: new BoxDecoration(color: Colors.white),
            child: new Center(
                child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {},
              color: Color(0xFF0D47A1),
              child: const Text('Sign Up',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1))),
            ),
            new Padding(
                padding: new EdgeInsets.all(20.0),
                child: new RaisedButton(
                  onPressed: () {},
                  child: const Text('Login', style: TextStyle(fontSize: 20)),
                ))
          ],
        ))));
  }
}

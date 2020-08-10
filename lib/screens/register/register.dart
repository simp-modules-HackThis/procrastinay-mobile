import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Create an Account'),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: new Container(
            decoration:
                new BoxDecoration(color: Theme.of(context).backgroundColor),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Procrastinay',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).accentColor),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        //controller: nameController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 50.0)),
                          labelText: 'User Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        //controller: passwordController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 50.0)),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        //controller: passwordController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 50.0)),
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Theme.of(context).buttonColor,
                          child: Text('Create'),
                          onPressed: () {
                            //todo login
                          },
                        )),
                  ],
                ))));
  }
}

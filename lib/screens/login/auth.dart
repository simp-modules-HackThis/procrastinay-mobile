import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //todo redirect to /home if already signed in
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Login or Register"),
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
                          'Log in',
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
                              borderSide: BorderSide(
                                  color: Theme.of(context).accentColor,
                                  width: 50.0)),
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
                              borderSide: BorderSide(
                                  color: Theme.of(context).accentColor,
                                  width: 50.0)),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        //todo forgot password screen
                      },
                      textColor: Theme.of(context).buttonColor,
                      child: Text('Forgot Password'),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Theme.of(context).buttonColor,
                          child: Text('Login'),
                          onPressed: () {
                            //todo login
                          },
                        )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Text('Do not have an account?'),
                        FlatButton(
                          textColor: Theme.of(context).buttonColor,
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
                  ],
                ))));
  }
}

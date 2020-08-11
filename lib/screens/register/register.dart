import 'package:flutter/material.dart';
import 'package:procrastinay/util/inputWidget.dart';
import 'package:procrastinay/util/roundedRectButton.dart';

import '../background.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(children: <Widget>[
          Background(),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 180)),
              Center(
                  child: Text(
                'Procrastinay',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Times New Roman', fontSize: 47),
              )),
              Padding(
                padding: EdgeInsets.only(top: 150),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 40, bottom: 10),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 16, color: Color(0xFF999A9A)),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      EmailInputWidget(30.0, 0.0, 'johndoe69@gmail.com'),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 40, bottom: 10),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: 16, color: Color(0xFF999A9A)),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      EmailInputWidget(30.0, 0.0, 'Password'),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              RoundedRectButton("Create an Account", signUpGradients, false,
                  () => Navigator.pushNamed(context, '/register')),
            ],
          ),
        ]));
  }
}

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];

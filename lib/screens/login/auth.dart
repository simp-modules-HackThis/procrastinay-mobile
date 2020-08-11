import 'package:flutter/material.dart';
import 'package:procrastinay/util/inputWidget.dart';

import '../background.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //todo redirect to /home if already signed in
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
                children: <Widget>[
                  ///holds email header and inputField
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 40, bottom: 10),
                        child: Text(
                          "Email",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF999A9A)),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          EmailInputWidget(30.0, 0.0),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 50),
                  ),
                  roundedRectButton(
                      "Let's get Started", signInGradients, false),
                  roundedRectButton(
                      "Create an Account", signUpGradients, false),
                ],
              )
            ],
          ),
        ]));
  }
}

Widget roundedRectButton(
    String title, List<Color> gradient, bool isEndIconVisible) {
  return Builder(builder: (BuildContext mContext) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment(1.0, 0.0),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(mContext).size.width / 1.7,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ),
          Visibility(
            visible: isEndIconVisible,
            child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: ImageIcon(
                  AssetImage("assets/ic_forward.png"),
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  });
}

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:procrastinay/models/user/create_user.dart';
import 'package:procrastinay/services/user_service.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  static const headers = {'Content-Type': 'application/json'};
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).backgroundColor
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: <Widget>[
                  headerSection(),
                  textSection(),
                  buttonSection(context),
                ],
              ),
      ),
    );
  }

  register(String username, pass, email, BuildContext context) async {
    print(username + ' ' + pass + ' ' + email);
    CreateUser user =
        new CreateUser(username: username, email: email, password: pass);
    var response = await UserService.createUser(user);
    if (response.data) {
      setState(() {
        _isLoading = false;
      });
      final snackBar = SnackBar(content: Text('Registered successfully'));
      _scaffoldKey.currentState.showSnackBar(snackBar);
      Navigator.of(context).pushNamed('/login');
    } else {
      setState(() {
        _isLoading = false;
      });
      final snackBar = SnackBar(content: Text('Something went wrong!'));
      _scaffoldKey.currentState.showSnackBar(snackBar);
    }
  }

  Container buttonSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      alignment: Alignment.center,
      child: new Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          // this will take space as minimum as posible(to center)
          children: <Widget>[
            ButtonTheme(
              minWidth: 140.0,
              height: 40.0,
              child: RaisedButton(
                onPressed: emailController.text == "" ||
                        usernameController.text == "" ||
                        passwordController.text == ""
                    ? null
                    : () {
                        setState(() {
                          _isLoading = true;
                        });
                        print('registering');
                        register(
                            usernameController.text,
                            passwordController.text,
                            emailController.text,
                            context);
                      },
                elevation: 0.0,
                color: Colors.purple,
                child:
                    Text("Register", style: TextStyle(color: Colors.white70)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController usernameController = new TextEditingController();

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: usernameController,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.person, color: Colors.black),
              hintText: "Username",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: emailController,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.black),
              hintText: "Email",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: passwordController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.black),
              hintText: "Password",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Container headerSection() {
    return Container(
        margin: EdgeInsets.only(top: 50.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Procrastinay",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text("Register",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
          ],
        ));
  }
}

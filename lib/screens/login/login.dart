import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:procrastinay/models/user/login_user.dart';
import 'package:procrastinay/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

  signIn(String username, pass, BuildContext context) async {
    print('signing in');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    LoginUser user = new LoginUser(username: username, password: pass);
    var response = await UserService.loginUser(user);
    if (!response.error) {
      setState(() {
        _isLoading = false;
      });
      sharedPreferences.setString("token", response.data.token);
      final snackBar = SnackBar(content: Text('Logged in successfully'));
      _scaffoldKey.currentState.showSnackBar(snackBar);
      Navigator.of(context).pushReplacementNamed('/home_page');
    } else {
      setState(() {
        _isLoading = false;
      });
      final snackBar = SnackBar(
          content: Text(response.errorMessage == ""
              ? 'Something went wrong!'
              : response.errorMessage));
      _scaffoldKey.currentState.showSnackBar(snackBar);
      print(response.errorMessage);
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
                onPressed: usernameController.text == "" ||
                        passwordController.text == ""
                    ? null
                    : () {
                        setState(() {
                          _isLoading = true;
                        });
                        print('sign in button pressed');
                        signIn(usernameController.text, passwordController.text,
                            context);
                      },
                elevation: 0.0,
                color: Colors.purple,
                child: Text("Sign In", style: TextStyle(color: Colors.white70)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            ButtonTheme(
              minWidth: 140.0,
              height: 40.0,
              child: RaisedButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('/register'),
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
            Text("Login",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
          ],
        ));
  }
}

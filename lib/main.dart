import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'screens/game/index.dart';
import 'screens/guild/index.dart';
import 'screens/home/index.dart';
import 'screens/login/index.dart';
import 'screens/profile/index.dart';
import 'screens/register/index.dart';
import 'screens/task_manager/index.dart';

void main() {
  print('started');
  runApp(MyApp());
  print('connectivity check');
  Connectivity().checkConnectivity().then((value) => print(value));
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/homepage': (BuildContext context) => new HomePage(),
    '/login': (BuildContext context) => new LoginPage(),
    '/register': (BuildContext context) => new RegisterPage(),
    '/profile': (BuildContext context) => new UserProfilePage(),
    '/task_manager': (BuildContext context) => new TaskManager(),
    '/guild': (BuildContext context) => new guild(),
    '/home_page': (BuildContext context) => new HomePage(),
    '/game': (BuildContext context) => new Game(),
  };

  @override
  Widget build(BuildContext context) {
    final appName = 'Procrastinay';

    return MaterialApp(
      title: appName,
      home: MyBottomNavigationBar(),
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.brown,
        accentColor: Colors.black,
        backgroundColor: Color(0xffe6e1db),
        buttonColor: Color(0xff6f4e37),
        // Define the default font family.
        fontFamily: 'Raleway',
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Raleway'),
        ),
      ),
      /*home: MyHomePage(
        title: appName,
      ),*/
//      initialRoute: '/',
      routes: routes,
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

// ignore: camel_case_types
class _bottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Game(),
    TaskManager(),
    guild(),
    UserProfilePage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.brown,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets),
              title: Text("Pets"),
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
        ));
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Procrastinay',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        accentColor: Color(0xff6f4e37),
        backgroundColor: Color(0xffe6e1db),
        // Define the default font family.
        fontFamily: 'Georgia',
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      routes: Routes().routes,
    );
  }
}*/

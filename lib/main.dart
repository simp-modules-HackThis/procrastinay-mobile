import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'screens/login/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => new Auth(),
    '/register': (BuildContext context) => new Auth()
  };

  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.brown,
        accentColor: Colors.black,
        backgroundColor: Color(0xffe6e1db),
        buttonColor: Color(0xff6f4e37),
        // Define the default font family.
        fontFamily: 'Consolas',
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      /*home: MyHomePage(
        title: appName,
      ),*/
      initialRoute: '/',
      routes: routes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme
              .of(context)
              .accentColor,
          child: Text(
            'Text with a background color',
            style: Theme
                .of(context)
                .textTheme
                .headline6,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
          Theme
              .of(context)
              .colorScheme
              .copyWith(secondary: Colors.yellow),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
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

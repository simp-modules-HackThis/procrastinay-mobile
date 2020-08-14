import 'package:flutter/material.dart';
import 'package:procrastinay/util/CustomBottomNavBar.dart';

class classSelection extends StatefulWidget {
  final Set classes = {"Paladin", "Ranger", "Priest", "Berserker"};

  _classSelection createState() => _classSelection();
}

class _classSelection extends State<classSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e1db),
      appBar: AppBar(title: Text("Select your class!")),
      body: Column(children: [
        SizedBox(
            height: 400,
            child: GridView.count(crossAxisCount: 2, children: [
              Container(
                  margin: const EdgeInsets.all(15),
                  width: 100,
                  height: 100,
                  color: Color(0xff4357ad),
                  child: Center(child: Text("Paladin", textScaleFactor: 2,))),
              Container(
                  margin: const EdgeInsets.all(15),
                  width: 100,
                  height: 100,
                  color: Color(0xff48a9a6),
                  child: Center(child: Text("Ranger", textScaleFactor: 2,))),
              Container(
                  margin: const EdgeInsets.all(15),
                  width: 100,
                  height: 100,
                  color: Color(0xffe7c15f),
                  child: Center(child: Text("Priest", textScaleFactor: 2,))),
              Container(
                  margin: const EdgeInsets.all(15),
                  width: 100,
                  height: 100,
                  color: Color(0xffc1666b),
                  child: Center(child: Text("Berserker", textScaleFactor: 2),))
            ])),
        FlatButton(
            color: Colors.brown,
            //onPressed:,
            child: Text(
              "Next!",
              textScaleFactor: 5,
            ))
      ]),

      /*bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 3,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("Settings"),
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
            onTap: (index){
              ;
            }

        )*/
    );
  }
}

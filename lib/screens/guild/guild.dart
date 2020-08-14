import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(guild());

class guild extends StatelessWidget {
  //todo fetch from API
  final String _guildName = "Calculus III Study Group";
  final String _guildMembers = "5 members";

  Widget _buildCoverImage(Size screenSize, BuildContext context) {
    return Container(
      height: screenSize.height / 2.4,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        /*image: DecorationImage(
          image: AssetImage('assets/images/cover.jpg'),
          fit: BoxFit.cover,
        ),*/
      ),
    );
  }

  Widget _buildGuildImage(BuildContext context) {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/profile.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Theme.of(context).accentColor,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  Widget _buildGuildName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _guildName,
      style: _nameTextStyle,
    );
  }

  Widget _buildGuildMembers(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _guildMembers,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildGuildButtons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Color(0xFF6F4E37),
                textColor: Color(0xFFE6E1DB),
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                child: Text(
                  'Tasks',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //todo show the tasks in the guild
                  null;
                },
              ),
              RaisedButton(
                color: Color(0xFF6F4E37),
                textColor: Color(0xFFE6E1DB),
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'Members',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //todo show the guild members
                  null;
                },
              )
            ])
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: new AppBar(
          title: new Text('                      Guild'),
        ),
        body: Stack(
          children: <Widget>[
            _buildCoverImage(screenSize, context),
            SafeArea(
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 70),
              ),
              _buildGuildImage(context),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              _buildGuildName(),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              _buildGuildMembers(context),
              Padding(
                padding: EdgeInsets.only(top: 25),
              ),
              _buildGuildButtons(context),
            ])))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
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
            onTap: (index) {
              print(index);
            }));
  }
}

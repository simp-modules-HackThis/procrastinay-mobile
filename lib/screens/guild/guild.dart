import 'package:flutter/material.dart';

void main() => runApp(guild());

class guild extends StatelessWidget {
  final String _guildName = "Calculus III Study Group";
  final String _guildMembers = "5";

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

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: new AppBar(
          title: new Text('                       Guild'),
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
              Padding(
                padding: EdgeInsets.only(top: 25),
              ),
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

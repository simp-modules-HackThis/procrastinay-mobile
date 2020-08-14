import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  //todo fetch from API
  final String _fullName = "Dick Cheney";
  final String _status = "Undergraduate Student";
  final String _bio = "\"Hi, I am a Student making the most of my time!\"";
  final String _tasks = "173";
  final String _groups = "24";
  final String _scores = "450";

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

  Widget _buildProfileImage(BuildContext context) {
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

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Tasks", _tasks),
          _buildStatItem("Groups", _groups),
          _buildStatItem("Score", _scores),
        ],
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildTodoList() {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Map'),
          ),
          ListTile(
            title: Text('Album'),
          ),
          ListTile(
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: new AppBar(
          title: new Text('                     Profile'),
        ),
        body: Stack(
          children: <Widget>[
            _buildCoverImage(screenSize, context),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    //SizedBox(height: screenSize.height / 6.4),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                    ),
                    _buildProfileImage(context),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    _buildFullName(),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    _buildStatus(context),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                    ),
                    _buildStatContainer(),
                    _buildSeparator(screenSize),
                    //_buildTodoList()
                    //_buildButtons(),
                  ],
                ),
              ),
            ),
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

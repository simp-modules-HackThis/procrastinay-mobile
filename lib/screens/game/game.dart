import 'dart:math';
import 'package:flutter/material.dart';
import 'package:procrastinay/models/api_response.dart';
import 'package:procrastinay/models/user_classtype.dart';
import 'package:zerker/zerker.dart';
import 'dart:convert';
import 'package:procrastinay/config.dart';
import 'package:http/http.dart' as http;
import 'package:procrastinay/screens/bottom_bar.dart';
//wompwpwmowpm
void main() => runApp(Game());

class Game extends StatelessWidget {
String _userCT = 'paladin';//classtype
String _petName = 'Good Boi';
int _points = 120;

//every 100 points level up. 
//every minute spent on task = 1 point 

  Future<String> requestClass() async {
    String response = (await http.get(Config.API_LINK + '/users/me',
        headers: {'class': 'application/json'})) as String;

    print(response);
    _userCT = response;
  }


 Widget _buildCoverImage(Size screenSize, BuildContext context) {
    return Container(
      height: screenSize.height / 2.4,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
//        image: DecorationImage(
//          image: AssetImage('assets/images/cover.jpg'),
//          fit: BoxFit.cover,
//        ),
      ),
    );
  }

    Widget _buildPetImage(BuildContext context) {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/paladin.svg'), //have to link
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

  Widget _buildPetName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _petName,
      style: _nameTextStyle,
    );
  }

//////////////////////////////

class MyZKApp extends ZKApp {
  ZKNode _node;
  ZKSprite _classpet;
  bool _loaded = false;
  double _index = 0;

  @override
  init() {
    Map<String, dynamic> urls = {
      "bkg": "bkg.png",
      // "dog": {"svg": "d.png", "width": 32.0, "height": 32.0},
      // "unicorn": {"image": "unicorn.png", "width": 32.0, "height": 32.0}
    };

    ZKAssets.preload(
      baseUrl: "assets/",
      urls: urls,
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:procrastinay/models/api_response.dart';
import 'package:procrastinay/models/user_classtype.dart';
import 'package:zerker/zerker.dart';
import 'dart:convert';
import 'package:procrastinay/config.dart';
import 'package:http/http.dart' as http;

void main() => runApp(Game());

class Game extends StatelessWidget {
  Future<String> requestClass() async {
    String response = (await http.get(Config.API_LINK + '/users/me',
        headers: {'class': 'application/json'})) as String;

    print(response);
    return (response);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Zerker(app: MyZKApp(), clip: true, interactive: true),
    );
  }
}

//////////////////////////////

class MyZKApp extends ZKApp {
  ZKNode _node;
  ZKSprite _unicorn;
  ZKSprite _goodboy;
  bool _loaded = false;
  double _index = 0;

  @override
  init() {
    Map<String, dynamic> urls = {
      "bkg": "bkg.png",
      "dog": {"image": "dog.png", "width": 32.0, "height": 32.0},
      "unicorn": {"image": "unicorn.png", "width": 32.0, "height": 32.0}
    };

    ZKAssets.preload(
      baseUrl: "assets/",
      urls: urls,
    );
  }
}

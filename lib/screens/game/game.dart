import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zerker/zerker.dart';

void main() => runApp(Game());

class Game extends StatelessWidget {
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

import 'package:flutter/foundation.dart';

class LoginUser {
  String username;
  String password;

  LoginUser({@required this.username, @required this.password});

  Map<String, dynamic> toJson() {
    return {"username": username, "password": password};
  }
}

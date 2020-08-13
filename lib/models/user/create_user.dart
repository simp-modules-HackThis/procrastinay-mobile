import 'package:flutter/foundation.dart';

class CreateUser {
  String email;
  String username;
  String password;
  String classType;

  CreateUser(
      {@required this.username,
      @required this.email,
      @required this.password,
      @required this.classType});

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "username": username,
      "password": password,
      "classType": classType
    };
  }
}

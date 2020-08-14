import 'package:flutter/foundation.dart';

class CreateUser {
  String email;
  String username;
  String password;

  CreateUser(
      {@required this.username, @required this.email, @required this.password});

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "username": username,
      "password": password,
    };
  }
}

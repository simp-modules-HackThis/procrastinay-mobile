import 'package:flutter/foundation.dart';

class LoginUser {
  String email;
  String password;

  LoginUser({@required this.email, @required this.password});

  Map<String, dynamic> toJson() {
    return {"email": email, "password": password};
  }
}

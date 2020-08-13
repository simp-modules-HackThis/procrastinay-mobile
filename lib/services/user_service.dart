import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:procrastinay/config.dart';
import 'package:procrastinay/models/api_reponse.dart';
import 'package:procrastinay/models/user/login_user.dart';
import 'package:procrastinay/models/user_token.dart';

import 'file:///D:/Mobile_Workspace/procrastinay/lib/models/user/create_user.dart';

class UserService {
  static const headers = {'Content-Type': 'application/json'};

  Future<APIResponse<UserToken>> createUser(CreateUser user) {
    return http
        .post(Config.API_LINK + '/login',
            headers: headers, body: json.encode(user.toJson()))
        .then((data) {
      if (data.statusCode == 201) {
        return APIResponse<UserToken>(
            data: UserToken.fromJson(json.decode(data.body)));
      }
    }).catchError((_) => APIResponse<UserToken>(
            error: true, errorMessage: 'An error occurred'));
  }

  Future<APIResponse<UserToken>> loginUser(LoginUser user) {
    return http
        .post(Config.API_LINK + '/login',
            headers: headers, body: json.encode(user.toJson()))
        .then((data) {
      if (data.statusCode == 201) {
        return APIResponse<UserToken>(
            data: UserToken.fromJson(json.decode(data.body)));
      }
    }).catchError((_) => APIResponse<UserToken>(
            error: true, errorMessage: 'An error occurred'));
  }
}

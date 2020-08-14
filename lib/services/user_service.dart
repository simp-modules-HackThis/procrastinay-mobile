import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:procrastinay/config.dart';
import 'package:procrastinay/models/api_response.dart';
import 'package:procrastinay/models/user/create_user.dart';
import 'package:procrastinay/models/user/login_user.dart';
import 'package:procrastinay/models/user_token.dart';


class UserService {
  static const headers = {'Content-Type': 'application/json'};

  static Future<APIResponse<bool>> createUser(CreateUser user) {
    return http
        .post(Config.API_LINK + '/login/',
            headers: headers, body: json.encode(user.toJson()))
        .then((data) {
      if (data.statusCode == 201) {
        return APIResponse<bool>(data: true);
      }
    }).catchError((_) => APIResponse<bool>(
            data: false, error: true, errorMessage: 'An error occurred'));
  }

  static Future<APIResponse<UserToken>> loginUser(LoginUser user) {
    return http
        .post(Config.API_LINK + '/login/',
        headers: headers, body: json.encode(user.toJson()))
        .then((data) {
      if (data.statusCode == 201) {
        return APIResponse<UserToken>(
            data: UserToken.fromJson(json.decode(data.body)));
      }
      if (data.statusCode == 400) {
        return APIResponse<UserToken>(
            data: null,
            error: true,
            errorMessage: "Invalid Username or Password");
      }
    }).catchError((_) =>
        APIResponse<UserToken>(
            error: true, errorMessage: 'An error occurred'));
  }
}

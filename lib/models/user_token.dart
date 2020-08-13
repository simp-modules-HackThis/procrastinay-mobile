class UserToken {
  String token;

  UserToken({this.token});

  factory UserToken.fromJson(Map<String, dynamic> item) {
    return UserToken(token: item['token']);
  }
}

class UserClassType {
  String classType;

  UserClassType({this.classType});

  factory UserClassType.fromJson(Map<String, dynamic> item) {
    return UserClassType(classType: item['class']);
  }
}

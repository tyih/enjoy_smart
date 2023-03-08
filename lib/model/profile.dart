class Profile {
  final String? user;
  String? token;
  late int? theme;
  final String? locale;

  Profile({this.user, this.token, this.theme, this.locale});

  /// Profile.fromJson构造函数
  Profile.fromJson(Map<String, dynamic> json)
      : user = json['user'],
        token = json['token'],
        theme = json['theme'],
        locale = json['locale'];

  /// 序列化，只需要将Profile对象传递给json.encode，不需要手动调用toJson方法，JSON.encode内部会自动调用
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user': user,
        'token': token,
        'theme': theme,
        'locale': locale,
      };
}

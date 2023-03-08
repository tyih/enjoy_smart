import 'dart:convert';

import 'package:enjoy_smart/model/profile.dart';
import 'package:enjoy_smart/services/net_cache.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red
];

class Global {
  static late SharedPreferences _prefs;
  static Profile profile = Profile();

  /// 网络缓存对象
  static NetCache netCache = NetCache();

  /// 可选主题列表
  static List<MaterialColor> get themes => _themes;

  /// 是否为release版
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  /// 初始化全局信息，app启动时执行
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _prefs = await SharedPreferences.getInstance();
    var profileStr = _prefs.getString('profile');
    if (profileStr != null) {
      try {
        profile = Profile.fromJson(jsonDecode(profileStr));
      } catch (e) {
        print(e);
      }
    } else {
      // 默认主题索引为0
      profile = Profile()..theme = 0;
    }
  }

  /// 初始化网络请求配置

  /// 持久化Profile
  static saveProfile() =>
      _prefs.setString('profile', jsonEncode(profile.toJson()));
}

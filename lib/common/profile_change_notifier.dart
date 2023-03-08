import 'package:enjoy_smart/model/profile.dart';
import 'package:flutter/material.dart';

import 'global.dart';

/// 共享状态
/// 
/// 依赖该状态的UI组件会自动更新
class ProfileChangeNotifier extends ChangeNotifier {
  Profile get _profile => Global.profile;

  @override
  void notifyListeners() {
    Global.saveProfile(); // 保存Profile的变更
    super.notifyListeners();
  }
}

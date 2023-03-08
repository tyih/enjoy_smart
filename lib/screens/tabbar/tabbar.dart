import 'package:flutter/material.dart';
import 'package:enjoy_smart/screens/home/home.dart';
import 'package:enjoy_smart/screens/profile/profile.dart';
import 'package:enjoy_smart/screens/line/line.dart';
import 'package:enjoy_smart/screens/source/source.dart';
import 'package:enjoy_smart/image_loader.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _select = 0;

  final screens = [
    const HomeScreen(),
    const SourceScreen(),
    const LineScreen(),
    const ProfileScreen()
  ];

  static Image gennerateIcon(String path) =>
      Image.asset('${ImageLoader.rootPath}tabbar/$path', width: 24, height: 24);

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: gennerateIcon('light/fuwu.png'),
        activeIcon: gennerateIcon('bold/fuwu.png'),
        label: '服务'),
    BottomNavigationBarItem(
        icon: gennerateIcon('light/huoyuan.png'),
        activeIcon: gennerateIcon('bold/huoyuan.png'),
        label: '货源'),
    BottomNavigationBarItem(
        icon: gennerateIcon('light/xianlu.png'),
        activeIcon: gennerateIcon('bold/xianlu.png'),
        label: '线路'),
    BottomNavigationBarItem(
        icon: gennerateIcon('light/wode.png'),
        activeIcon: gennerateIcon('bold/wode.png'),
        label: '我的'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_select],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        onTap: (value) => setState(() {
          _select = value;
        }),
        currentIndex: _select,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10
        ),
        selectedItemColor: const Color(0xFF212121),
        unselectedItemColor: const Color(0xFF9E9E9E),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

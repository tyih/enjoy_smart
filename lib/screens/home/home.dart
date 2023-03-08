import 'package:flutter/material.dart';
import 'package:enjoy_smart/screens/home/home_appbar.dart';

class HomeScreen extends StatefulWidget {
  static String route() => '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'assets/icons/zhan.png',
    'assets/icons/zhan.png',
    'assets/icons/zhan.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverSafeArea(
          sliver: SliverPadding(
              padding: EdgeInsets.only(top: 0),
              sliver: SliverAppBar(
                pinned: true,
                flexibleSpace: HomeAppBar(),
                expandedHeight: 70,
              )))
    ]));
  }
}

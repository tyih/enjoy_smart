import 'package:flutter/material.dart';
import 'package:enjoy_smart/routes.dart';
import 'package:enjoy_smart/screens/tabbar/tabbar.dart';

import 'common/global.dart';

void main() => Global.init().then((e) => runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enjoy Smart',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const TabBarScreen(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

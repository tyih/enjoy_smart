import 'package:flutter/material.dart';
import 'package:enjoy_smart/screens/home/home.dart';
import 'package:enjoy_smart/screens/profile/profile.dart';
import 'package:enjoy_smart/screens/line/line.dart';
import 'package:enjoy_smart/screens/source/source.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.route() : (context) => const HomeScreen(),
  SourceScreen.route() : (context) => const SourceScreen(),
  LineScreen.route() : (context) => const LineScreen(),
  ProfileScreen.route() : (context) => const ProfileScreen()
};
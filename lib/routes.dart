import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/setting_page.dart';

class Routes {
   Map<String, StatelessWidget Function(dynamic context)> routes = {
    '/login': (context) => LoginPage(),
    '/home': (context) => const HomePage(),
    '/setting': (context) => SettingPage(),
  };
}
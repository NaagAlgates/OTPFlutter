import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/broken_page.dart';
import '../main.dart';
import '../pages/no_internet_page.dart';
import '../pages/settings_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings route) {
    final args = route.arguments;
    switch (route.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OtpHomePage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case '/no_network':
        return MaterialPageRoute(builder: (_) => NoNetwork());
      default:
        return MaterialPageRoute(builder: (_) => Broken());
    }
  }
}
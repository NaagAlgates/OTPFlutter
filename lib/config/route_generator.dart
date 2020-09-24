import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xam_otp_flutter/pages/home_page.dart';
import 'package:xam_otp_flutter/pages/otp_page.dart';
import 'package:xam_otp_flutter/pages/success_page.dart';

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
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/otp':
        return MaterialPageRoute(builder: (_) => OtpPage());
      case '/success':
        return MaterialPageRoute(builder: (_) => OtpSuccessPage());
      default:
        return MaterialPageRoute(builder: (_) => Broken());
    }
  }
}
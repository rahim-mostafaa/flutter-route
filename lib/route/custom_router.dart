import 'package:flutter/material.dart';
import './router_guard.dart';
import '../../first.dart';
import '../../second.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    String routeName = RouterGuard.isAuthorized(settings);
    switch (routeName) {
      case 'first_page':
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case 'second_page':
        return MaterialPageRoute(builder: (_) => const SecondPage());
      default:
        return MaterialPageRoute(builder: (_) => const FirstPage());
    }
  }
}

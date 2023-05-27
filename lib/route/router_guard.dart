import 'package:flutter/material.dart';

class RouterGuard {
  // all pages which not need to be authorized
  static List<String> guestPages = [
    'first_page',
  ];
  static String isAuthorized(RouteSettings settings) {
    String routeName = settings.name ?? 'first_page';
    bool hasToken = false; // check for auth role her
    if (!hasToken && !guestPages.contains(routeName)) {
      // change route name to login or any thing you want
      routeName = 'first_page';
    }
    return routeName;
  }
}

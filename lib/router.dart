import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/home_screen_mobile.dart';
import 'package:portfolio/screens/home/home_screen_web.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreenMobile.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreenMobile(),
      );
    case HomeScreenWeb.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreenWeb(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              'Page Not Found!',
            ),
          ),
        ),
      );
  }
}
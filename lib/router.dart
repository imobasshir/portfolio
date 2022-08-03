import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_mobile.dart';
import 'package:portfolio/screens/about/about_web.dart';
import 'package:portfolio/screens/home/home_screen_mobile.dart';
import 'package:portfolio/screens/home/home_screen_web.dart';
import 'package:portfolio/screens/projects/projects_mobile.dart';
import 'package:portfolio/screens/projects/projects_web.dart';
import 'package:portfolio/screens/resume/resume_mobile.dart';
import 'package:portfolio/screens/resume/resume_web.dart';

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
    case ResumeMobile.routeName:
      return MaterialPageRoute(
        builder: (_) => const ResumeMobile(),
      );
    case ResumeWeb.routeName:
      return MaterialPageRoute(
        builder: (_) => const ResumeWeb(),
      );
    case ProjectsMobile.routeName:
      return MaterialPageRoute(
        builder: (_) => const ProjectsMobile(),
      );
    case ProjectsWeb.routeName:
      return MaterialPageRoute(
        builder: (_) => const ProjectsWeb(),
      );
    case AboutMobile.routeName:
      return MaterialPageRoute(
        builder: (_) => const AboutMobile(),
      );
    case AboutWeb.routeName:
      return MaterialPageRoute(
        builder: (_) => const AboutWeb(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Image.asset(
              '/images/oops.jpg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      );
  }
}

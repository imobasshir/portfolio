import 'package:flutter/material.dart';
import 'package:portfolio/router.dart';
import 'package:portfolio/screens/home/home_screen_mobile.dart';
import 'package:portfolio/screens/home/home_screen_web.dart';
import 'package:portfolio/utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobasshir',
      theme: ThemeData(
        useMaterial3: true,
        backgroundColor: Colors.white,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const ResponsiveLayout(
        mobileScreenLayout: HomeScreenMobile(),
        webScreenLayout: HomeScreenWeb(),
      ),
    );
  }
}

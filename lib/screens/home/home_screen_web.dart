import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/topbar.dart';

class HomeScreenWeb extends StatefulWidget {
  static const String routeName = '/homeweb';
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  State<HomeScreenWeb> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, screenSize.height * 0.1),
        child: const TopBar(),
      ),
      body: const Center(
        child: Text('Home Screen Web'),
      ),
    );
  }
}

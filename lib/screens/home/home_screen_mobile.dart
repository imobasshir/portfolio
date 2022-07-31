import 'package:flutter/material.dart';

class HomeScreenMobile extends StatefulWidget {
  static const String routeName = '/homemobile';
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                'Mobasshir Imam',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Resume',
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Project',
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'About',
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}

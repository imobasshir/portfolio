import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_web.dart';
import 'package:portfolio/screens/blogs/blogs_web.dart';
import 'package:portfolio/screens/projects/projects_web.dart';
import 'package:portfolio/screens/resume/resume_web.dart';

class HomeScreenWeb extends StatefulWidget {
  static const String routeName = '/homeweb';
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  State<HomeScreenWeb> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    MainWeb(),
    ResumeWeb(),
    ProjectsWeb(),
    BlogsWeb(),
    AboutWeb(),
  ];

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text('Mobasshir'),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
      ),
      backLayer: BackdropNavigationBackLayer(
        itemSplashColor: Colors.grey[100],
        items: const [
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Text(
              'Resume',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Text(
              'Projects',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Text(
              'Blogs',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Text(
              'About',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        onTap: (int position) => {setState(() => _currentIndex = position)},
      ),
      frontLayer: _pages[_currentIndex],
    );
  }
}

class MainWeb extends StatelessWidget {
  const MainWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Web'),
    );
  }
}

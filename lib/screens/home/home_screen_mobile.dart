import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_mobile.dart';
import 'package:portfolio/screens/blogs/blogs_mobile.dart';
import 'package:portfolio/screens/projects/projects_mobile.dart';
import 'package:portfolio/screens/resume/resume_mobile.dart';

class HomeScreenMobile extends StatefulWidget {
  static const String routeName = '/homemobile';
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    MainMobile(),
    ResumeMobile(),
    ProjectsMobile(),
    BlogsMobile(),
    AboutMobile(),
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

class MainMobile extends StatelessWidget {
  const MainMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home'));
  }
}

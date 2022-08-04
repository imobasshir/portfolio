import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/about/about_web.dart';
import 'package:portfolio/screens/projects/projects_web.dart';
import 'package:portfolio/screens/resume/resume_web.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenWeb extends StatefulWidget {
  static const String routeName = '/homeweb';
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  State<HomeScreenWeb> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
  final List<Widget> _pages = const [
    MainWeb(),
    ResumeWeb(),
    ProjectsWeb(),
    AboutWeb(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
          // title: const Text(
          //   'Mobasshir',
          //   textAlign: TextAlign.center,
          // ),
          // centerTitle: true,
          backgroundColor: Colors.grey[100],
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(
                // icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                // icon: Icon(FontAwesomeIcons.file),
                text: 'Resume',
              ),
              Tab(
                // icon: Icon(FontAwesomeIcons.code),
                text: 'Projects',
              ),
              Tab(
                // icon: Icon(FontAwesomeIcons.info),
                text: 'About',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: _pages,
        ),
      ),
    );
  }
}

final Uri _git = Uri.parse('https://github.com/imobasshir');
final Uri _linkdIn = Uri.parse('https://www.linkedin.com/in/imobasshir/');
final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'imobasshirimam@gmail.com',
);
final Uri _twitter = Uri.parse('https://twitter.com/mobasshirtwts');

class MainWeb extends StatelessWidget {
  const MainWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Mobasshir Imam',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Final year Undergrad,\nA learner & love solving problems,\nBuilding Mobile Applications using\n Flutter & CrossPlatform Developer.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: const Icon(
                      FontAwesomeIcons.github,
                    ),
                    onTap: () {
                      launchUrl(
                        _git,
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: const WebViewConfiguration(
                          enableJavaScript: true,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: const Icon(
                      FontAwesomeIcons.linkedin,
                    ),
                    onTap: () {
                      launchUrl(
                        _linkdIn,
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: const WebViewConfiguration(
                          enableJavaScript: true,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                    ),
                    onTap: () {
                      launchUrl(
                        _twitter,
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: const WebViewConfiguration(
                          enableJavaScript: true,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: const Icon(
                      FontAwesomeIcons.envelope,
                    ),
                    onTap: () {
                      launchUrl(
                        emailLaunchUri,
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: const WebViewConfiguration(
                          enableJavaScript: true,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 200,
              backgroundColor: Colors.grey[100],
              child: const CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('images/profile.png'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}

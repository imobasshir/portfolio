import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/about/about_mobile.dart';
import 'package:portfolio/screens/projects/projects_mobile.dart';
import 'package:portfolio/screens/resume/resume_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

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
    AboutMobile(),
  ];

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        // title: const Text('Mobasshir'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
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
              'About Me',
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

final Uri _git = Uri.parse('https://github.com/imobasshir');
final Uri _linkdIn = Uri.parse('https://www.linkedin.com/in/imobasshir/');
final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'imobasshirimam@gmail.com',
);
final Uri _twitter = Uri.parse('https://twitter.com/mobasshirstwt');

class MainMobile extends StatelessWidget {
  const MainMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 140,
                  backgroundColor: Colors.grey[100],
                  child: const CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Mobasshir Imam',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Final year Undergrad,\nA learner & love solving problems,\nBuilding Mobile Applications using\n Flutter & CrossPlatform Developer.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
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
          ],
        ),
      ],
    );
  }
}

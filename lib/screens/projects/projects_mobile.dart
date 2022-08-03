import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/custom_project_tile.dart';

class ProjectsMobile extends StatelessWidget {
  static const String routeName = '/projectmobile';
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Tools and Technologies Used',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(FontAwesomeIcons.java),
                SizedBox(width: 6),
                Icon(Icons.flutter_dash_rounded),
                SizedBox(width: 6),
                Icon(FontAwesomeIcons.android),
                SizedBox(width: 6),
                Icon(FontAwesomeIcons.html5),
                SizedBox(width: 6),
                Icon(FontAwesomeIcons.nodeJs),
                SizedBox(width: 6),
                Icon(FontAwesomeIcons.github),
                SizedBox(width: 6),
                Icon(FontAwesomeIcons.docker),
                SizedBox(width: 6),
                Icon(FontAwesomeIcons.linux),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Featured Projects',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomProjectTile(
              url: 'https://github.com/imobasshir/amazon_clone',
              img: Image.asset('images/amazon.png'),
              type: 'FLUTTER PROJECT',
              title: 'Amazon Clone',
              techstack: 'Flutter, Node.Js, Express.Js, MongoDB',
            ),
            const SizedBox(height: 20),
            CustomProjectTile(
              url: 'https://github.com/imobasshir/news_material3',
              img: Image.asset('images/news.jpeg'),
              type: 'FLUTTER PROJECT',
              title: 'News App',
              techstack: 'Flutter',
            ),
            const SizedBox(height: 20),
            CustomProjectTile(
              url: 'https://github.com/imobasshir/Collage-Buddy',
              img: Image.asset('images/programmer.jpeg'),
              type: 'WEBSITE',
              title: 'Collage Buddy',
              techstack: 'HTML, CSS, JavaScript',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}

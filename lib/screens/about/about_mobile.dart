import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMobile extends StatelessWidget {
  static const String routeName = '/aboutmobile';
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          'About Me',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              title: Text(
                'I, Mobasshir Imam final year undergraduate student of Information Technology at IPEC Ghaziabad. I love to learn more about new technologies and i am currently doing App Development using flutter & practicing Data Structures and Algorithms. I love to solve problem and contribute to open source. And in free time i watch sports like Cricket mainly but some times i also watch Football.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
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
                  FontAwesomeIcons.instagram,
                ),
                onTap: () {
                  launchUrl(
                    _insta,
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
    );
  }
}

final Uri _git = Uri.parse('https://github.com/imobasshir');
final Uri _linkdIn = Uri.parse('https://www.linkedin.com/in/imobasshir/');
final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'imobasshirimam@gmail.com',
);
final Uri _insta = Uri.parse('https://www.instagram.com/mobasshir_code/');
final Uri _twitter = Uri.parse('https://twitter.com/mobasshirtwts');
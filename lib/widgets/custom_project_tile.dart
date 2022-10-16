import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomProjectTile extends StatelessWidget {
  final String url;
  final Image img;
  final String title;
  final String techstack;
  final String type;
  const CustomProjectTile({
    Key? key,
    required this.url,
    required this.img,
    required this.title,
    required this.techstack,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 240,
        width: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: img.image,
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              type,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 28),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 28),
            Text(
              techstack,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      onTap: () {
        launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
          webViewConfiguration: const WebViewConfiguration(
            enableJavaScript: true,
          ),
        );
      },
    );
  }
}

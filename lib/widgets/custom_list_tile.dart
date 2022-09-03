import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final String batch;
  final String title;
  final String subtitle;
  final String marks;
  const ListTileCustom({
    Key? key,
    required this.batch,
    required this.title,
    required this.subtitle,
    required this.marks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Column(
                children: [
                  SelectableText(
                    batch,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SelectableText(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    SelectableText(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SelectableText(
                      marks,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

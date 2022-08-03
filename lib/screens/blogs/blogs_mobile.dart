import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_list_tile.dart';

class BlogsMobile extends StatelessWidget {
  static const String routeName = '/blogsmobile';
  const BlogsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: const [
                  Text(
                    'Blogs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ListTileCustom(
                    batch: '',
                    title: 'COMING SOON',
                    subtitle: '',
                    marks: '',
                  ),
                  ListTileCustom(
                    batch: '',
                    title: 'COMING SOON',
                    subtitle: '',
                    marks: '',
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(),
            ),
          ],
        ),
      ],
    );
  }
}

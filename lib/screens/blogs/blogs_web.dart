import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_list_tile.dart';

class BlogsWeb extends StatelessWidget {
  static const String routeName = '/blogsweb';
  const BlogsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(),
            ),
            Expanded(
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
              child: Column(),
            ),
          ],
        ),
      ],
    );
  }
}

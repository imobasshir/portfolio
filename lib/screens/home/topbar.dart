import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Mobasshir Imam',
          style: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        InkWell(
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/homeweb');
          },
        ),
        InkWell(
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Resume',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/resumeweb');
          },
        ),
        InkWell(
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Project',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/projectweb');
          },
        ),
        InkWell(
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Blogs',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/blogweb');
          },
        ),
        InkWell(
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'About',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/aboutweb');
          },
        ),
      ],
    );
  }
}

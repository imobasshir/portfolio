import 'package:flutter/material.dart';

class AboutWeb extends StatelessWidget {
  static const String routeName = '/aboutweb';
  const AboutWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('About Web'),
    );
  }
}
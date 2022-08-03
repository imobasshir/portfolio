import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_list_tile.dart';

class ResumeWeb extends StatelessWidget {
  static const String routeName = '/resumeweb';
  const ResumeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Education',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ListTileCustom(
                    batch: 'BATCH of 2023',
                    title: 'B.Tech, Information Technology',
                    subtitle: 'IPEC, Ghaziabad\nAffiliated to AKTU, Lucknow',
                    marks: 'Percentage: 71%',
                  ),
                  ListTileCustom(
                    batch: 'BATCH of 2019',
                    title: 'Grade XII, Science',
                    subtitle: 'St. Lawrence Convent, Delhi',
                    marks: 'Percentage: 73%',
                  ),
                  ListTileCustom(
                    batch: 'BATCH of 2017',
                    title: 'Grade X',
                    subtitle: 'St. Lawrence Convent, Delhi',
                    marks: 'CGPA: 7.8',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Experience',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ListTileCustom(
                    batch: '10/2021 - 11/2021',
                    title: 'The Intern Academy',
                    subtitle: 'Frontend Developer',
                    marks:
                        'In this internship our task was to made a frontend of a website.',
                  ),
                  Text(
                    'Achievements',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ListTileCustom(
                    batch: '11/2021',
                    title: 'Robotech Hackathon',
                    subtitle: 'Participated in Robotech Hackathon,',
                    marks: 'and we finished 6th.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

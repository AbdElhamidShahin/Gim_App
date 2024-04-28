import 'package:flutter/material.dart';

import '../wedget/costom_bosh.dart';

class Hands_Screen extends StatelessWidget {
  const Hands_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'اليوم الخامس',
              style: TextStyle(color: Colors.amber, fontSize: 16),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 5,
              ),
              const CustomBosh(
                images: 'asset/GIF/hands/BBPreacherCurl.gif',
                text3: 'صدر تفتيح-فراشه مستوي',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/hands/BBWristCurl.gif',
                text3: 'صدر بار مستوي',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/hands/CBBentoverTriExt.gif',
                text3: 'دمبل وفر',
                text4: 'عددالمجموعات:2  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/hands/CBReversePreacherCurl.gif',
                text3: 'كيبل كروس',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/hands/db_biceps_curl.gif',
                text3: 'بار عالي ',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/hands/DBConcentrationCurl.gif',
                text3: 'بار عالي ',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              FloatingActionButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const SecondRoute()),
                  // );
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../wedget/costom_bosh.dart';

class Lates_Screen extends StatelessWidget {
  const Lates_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'اليوم الثاني',
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
                images: 'asset/GIF/lats/boraise.gif',
                text3: 'صدر تفتيح-فراشه مستوي',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/lats/dumbell row.gif',
                text3: 'صدر بار مستوي',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/lats/lat_pull_at_45_degrees_with_fitband.gif',
                text3: 'دمبل وفر',
                text4: 'عددالمجموعات:2  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/lats/tbarrows.gif',
                text3: 'كيبل كروس',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/lats/Unilateral lat prayer.gif',
                text3: 'بار عالي ',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/lats/wide lat pulldown.gif',
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

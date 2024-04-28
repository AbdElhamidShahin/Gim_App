import 'package:flutter/material.dart';

import '../wedget/costom_bosh.dart';

class Sholder_Screen extends StatelessWidget {
  const Sholder_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'اليوم الثالث',
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
                images: 'asset/GIF/shorter/DBArnoldPress.gif',
                text3: 'صدر تفتيح-فراشه مستوي',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/shorter/DBFrontRaise.gif',
                text3: 'صدر بار مستوي',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/shorter/DBSeatedRearLateralRaise.gif',
                text3: 'دمبل وفر',
                text4: 'عددالمجموعات:2  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/shorter/DBUPROW.gif',
                text3: 'كيبل كروس',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/shorter/landmine press.gif',
                text3: 'بار عالي ',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/shorter/lateral raise.gif',
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

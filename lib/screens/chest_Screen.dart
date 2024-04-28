import 'package:flutter/material.dart';
import '../wedget/costom_bosh.dart';

class chest_Screen extends StatelessWidget {
  const chest_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'اليوم الاول',
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
                images: 'asset/GIF/chest/08StandardPushup.gif',
                text3: 'صدر - ضغط ',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/chest/bench press.gif',
                text3: 'صدر بار مستوي',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/chest/DBFly.gif',
                text3: ' تفتيح مستوي',
                text4: 'عددالمجموعات:2  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/chest/machinei.gif',
                text3: 'دفع عالي',
                text4: 'عددالمجموعات:4  عدد التكرارات:10',
              ),
              const CustomBosh(
                images: 'asset/GIF/chest/DeclineBenchPress.gif',
                text3: 'تجميع سفلي',
                text4: 'عددالمجموعات:3  عدد التكرارات:10',
              ),   const CustomBosh(
                images: 'asset/GIF/chest/dumbbell press.gif',
                text3: 'تجميع مستوي ',
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

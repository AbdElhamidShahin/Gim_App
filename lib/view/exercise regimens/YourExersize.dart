import 'package:flutter/material.dart';

import '../wedget/Custom_ExersizeScreen.dart';

class YourExersize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('برنامج تقسيم 7 أيام'),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Custom_ExersizeScreen(
                titlee: 'اليوم 1',
                type: 'Day 1',
              ),
              SizedBox(height: 20),
              Custom_ExersizeScreen(
                titlee: 'اليوم 2',
                type: 'Day 2',
              ),
              SizedBox(height: 20),
              Custom_ExersizeScreen(
                titlee: 'اليوم 3',
                type: 'Day 3',
              ),
              SizedBox(height: 20),
              Custom_ExersizeScreen(
                titlee: 'اليوم 4',
                type: 'Day 4',
              ),
              SizedBox(height: 20),
              Custom_ExersizeScreen(
                titlee: 'اليوم 5',
                type: 'Day 5',
              ),
              SizedBox(height: 20),
              Custom_ExersizeScreen(
                titlee: 'اليوم 6',
                type: 'Day 6',
              ),
              SizedBox(height: 20),
              Custom_ExersizeScreen(
                titlee: 'اليوم 7',
                type: 'Day 7',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

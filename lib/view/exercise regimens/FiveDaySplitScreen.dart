import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../wedget/Custom_ExersizeScreen.dart';

class FiveDaySplitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'برنامج تقسيم 5 أيام',
          style: GoogleFonts.changa(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // تعديل لون الأيقونات
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Custom_ExersizeScreen(
              titlee: 'اليوم 1 - صدر',
              type: 'Day 1',
            ),
            SizedBox(height: 20),
            Custom_ExersizeScreen(
              titlee: 'اليوم 2 - ظهر',
              type: 'Day 2',
            ),
            SizedBox(height: 20),
            Custom_ExersizeScreen(
              titlee: 'اليوم 3 - أكتاف',
              type: 'Day 3',
            ),
            SizedBox(height: 20),
            Custom_ExersizeScreen(
              titlee: 'اليوم 4 - ذراعين',
              type: 'Day 4',
            ),
            SizedBox(height: 20),
            Custom_ExersizeScreen(
              titlee: 'اليوم 5 - أرجل',
              type: 'Day 5',
            ),
          ],
        ),
      ),
    );
  }
}

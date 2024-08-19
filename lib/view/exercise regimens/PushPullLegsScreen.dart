import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../wedget/Custom_ExersizeScreen.dart';

class PushPullLegsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'دفع-سحب-أرجل',
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
              titlee: 'تمارين الدفع',
              type: 'Push',
            ),
            SizedBox(height: 20),
            Custom_ExersizeScreen(
              titlee: 'تمارين السحب',
              type: 'Pull',
            ),
            SizedBox(height: 20),
            Custom_ExersizeScreen(
              titlee: 'تمارين الأرجل',
              type: 'Leg',
            ),
          ],
        ),
      ),
    );
  }
}

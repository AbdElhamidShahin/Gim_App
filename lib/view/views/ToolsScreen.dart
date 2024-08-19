import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ViewModel/FOODDetails/Culcolate Counting.dart';
import '../../ViewModel/FOODDetails/FoodDetailsScreen.dart';
import '../../ViewModel/FOODDetails/IdelWeight.dart';
import '../exercise regimens/Bmi_calcolator.dart';

class Toolsscreen extends StatelessWidget {
  const Toolsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 10;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tools'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          childAspectRatio: (itemWidth / itemHeight),
          children: <Widget>[
            _buildToolCard(
              context,
              title: ' حساب مؤشر كتله الجسم BMI',
              color: Colors.green[100]!,
              targetPage: BmiCalculator(),
            ),
            _buildToolCard(
              context,
              title: ' حساب تفاصيل الاطعمه',
              color: Colors.green[100]!,
              targetPage: FoodDetailsScreen(),
            ),
            _buildToolCard(
              context,
              title: 'IBW حساب الوزن المثالي',
              color: Colors.green[100]!,
              targetPage: Idelweight(), // Replace with your Ideal Weight screen
            ),
            _buildToolCard(
              context,
              title: 'حساب السعرات الحراريه',
              color: Colors.green[100]!,
              targetPage:
                  Culcolatecounting(), // Replace with your Calorie Counting screen
            ),
          ].animate(interval: 300.ms).fadeIn(duration: 800.ms),
        ),
      ),
    );
  }

  Widget _buildToolCard(
    BuildContext context, {
    required String title,
    required Color color,
    required Widget targetPage,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.changa(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection
                .rtl, // This sets the text direction to right-to-left
            textAlign: TextAlign.center,
          ),
        ),
      ).animate().scale(
            duration: 500.ms,
            curve: Curves.easeOut,
          ),
    );
  }
}

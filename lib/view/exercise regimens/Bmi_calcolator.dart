import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../wedget/CustomBmi.dart';


class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                ' حساب  BMI',            textDirection: TextDirection
                  .rtl,
                style:  GoogleFonts.changa(color: Colors.green[100], fontSize: 40),
              ),
            ),
            Bmi(),
          ],
        ),
      ),
    );
  }
}

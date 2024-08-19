import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomContinar.dart';

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double calculatedBMI = 0;
  double weight = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE8F5E9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Continar(
                title: 'الطول',
                hintText: 'أدخل طولك',
                onChanged: (value) => setState(() {
                  height = double.tryParse(value) ?? 0;
                }),
              ),
              Continar(
                title: 'الوزن',
                hintText: 'أدخل وزنك',
                onChanged: (value) => setState(() {
                  weight = double.tryParse(value) ?? 0;
                }),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: sizedBox(
                  text: 'احسب BMI',
                  width: double.infinity,
                  height: 71,
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        calculatedBMI = (weight / (height * height) * 10000);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                child: Text(
                  'مؤشر كتلة الجسم:',   textDirection: TextDirection
                    .rtl,
                  style: GoogleFonts.changa(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Text(
                  'BMI: ${calculatedBMI.toStringAsFixed(2)} ',   textDirection: TextDirection
                    .rtl,
                  style: GoogleFonts.changa(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                child: Text(
                  'النتيجة:',   textDirection: TextDirection
                    .rtl,
                  style: GoogleFonts.changa(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Text(
                  getResultText(),   textDirection: TextDirection
                    .rtl,
                  style: GoogleFonts.changa(
                      color: Colors.black45,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }

  String getResultText() {
    if (calculatedBMI >= 18.6 && calculatedBMI <= 24.9) {
      return 'وزن صحي';
    } else if (calculatedBMI < 18) {
      return 'نقص في الوزن';
    } else if (calculatedBMI > 25 && calculatedBMI <= 29.9) {
      return 'وزن صحي';
    } else if (calculatedBMI > 30) {
      return 'سمنة';
    }
    return 'غير معروف';
  }
}

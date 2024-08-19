import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ViewModel/exersize/Exersize.dart';

class Custom_ExersizeScreen extends StatelessWidget {
  final String titlee;
  final String type;

  const Custom_ExersizeScreen({Key? key, required this.titlee, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ExerciseScreen(currentDay: type, )),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.green[200]!,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titlee,
              style:  GoogleFonts.changa(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Tap to view exercises',
              style:  GoogleFonts.changa(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  CustomAppBar({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AppBar(
        title: Text(
          text,
          style: GoogleFonts.changa(color: Colors.amber, fontSize: 18),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class appbar extends StatelessWidget implements PreferredSizeWidget {
  final String text1;

  appbar({required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AppBar(
        title: Text(
          text1,
          style: GoogleFonts.changa(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // تعديل لون الأيقونات
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

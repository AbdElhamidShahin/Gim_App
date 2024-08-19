import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../wedget/BottomNav_bar.dart';


class Gim_view extends StatelessWidget {
  const Gim_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text(
            'Power Pulse',
            style:  GoogleFonts.changa(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body:  BottomNavigationBarExample());
  }
}

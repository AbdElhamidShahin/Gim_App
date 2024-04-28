import 'package:flutter/material.dart';
import 'package:gim_app/wedget/custom_text_feild.dart';

import '../wedget/Body_view.dart';
import '../wedget/Bottom{_nav_bar.dart';

class Gim_view extends StatelessWidget {
  const Gim_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Gim fet',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body:BottomNavigationBarExample()

    );
  }
}

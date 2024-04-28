import 'package:flutter/material.dart';
import 'package:gim_app/screens/Legs_Screen.dart';
import 'package:gim_app/screens/hands_screen.dart';
import 'package:gim_app/screens/lates_Screen.dart';
import 'package:gim_app/screens/sholder_Screen.dart';
import 'package:gim_app/wedget/custom_text_feild.dart';

import '../screens/chest_Screen.dart';

class Home_veiw extends StatelessWidget {
  const Home_veiw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextField(
              image: 'asset/catogry/2.jpg',
              text1: 'اليوم الاول:',
              text2: 'عضلات الصدر', routeToNavigate: chest_Screen(),
            ),
            CustomTextField(
              image: 'asset/catogry/1.jpg',
              text1: 'اليوم الثاني:',
              text2: 'عضلات الظهر',routeToNavigate: Lates_Screen(),
            ),
            CustomTextField(
              image: 'asset/catogry/3.jpg',
              text1: 'اليوم الثالث:',
              text2: 'عضلات الكتفين',routeToNavigate: Sholder_Screen(),
            ),
            CustomTextField(
              image: 'asset/catogry/6.jpg',
              text1: 'اليوم الرابع:',routeToNavigate: Sholder_Screen(),
              text2: 'راحه',
            ),
            CustomTextField(
              image: 'asset/catogry/4.jpg',
              text1: 'اليوم الخامس:',
              text2: 'عضلات الذراع ',routeToNavigate: Hands_Screen(),
            ),
            CustomTextField(
              image: 'asset/catogry/5.jpg',
              text1: 'اليوم السادس:',
              text2: 'الارجل',routeToNavigate: Legs_Screen()
            ),
            CustomTextField(
              image: 'asset/catogry/6.jpg',
              text1: 'اليوم السابع:',
              text2: 'راحه',routeToNavigate: Sholder_Screen()
            ),
          ],
        ),
      ),
    );
  }
}

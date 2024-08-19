import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../screens/Screen/Legs_Screen.dart';
import '../screens/Screen/beilyScreen.dart';
import '../screens/Screen/chest_Screen.dart';
import '../screens/Screen/hands_screen.dart';
import '../screens/Screen/lates_Screen.dart';
import '../screens/Screen/sholder_Screen.dart';
import '../wedget/custom_text_feild.dart';

class Home_veiw extends StatelessWidget {
  const Home_veiw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextField(
            image: 'assets/catogry/chest.jpg',
            text1: ': اليوم الاول ',
            text2: 'عضلات الصدر',
            routeToNavigate: chest_Screen(),
          ),
          CustomTextField(
            image: 'assets/catogry/lates.jpg',
            text1: ': اليوم الثاني',
            text2: 'عضلات الظهر',
            routeToNavigate: Lates_Screen(),
          ),
          CustomTextField(
            image: 'assets/catogry/shorter.jpeg',
            text1: ': اليوم الثالث',
            text2: 'عضلات الكتفين',
            routeToNavigate: Sholder_Screen(),
          ),
          CustomTextField(
            image: 'assets/catogry/6.jpg',
            text1: ': اليوم الرابع:',
            // routeToNavigate: Sholder_Screen(),
            text2: 'راحه',
          ),
          CustomTextField(
            image: 'assets/catogry/hands.jpg',
            text1: ': اليوم الخامس',
            text2: 'عضلات الذراع ',
            routeToNavigate: Hands_Screen(),
          ),
          CustomTextField(
              image: 'assets/catogry/legs.jpg',
              text1: ': اليوم السادس',
              text2: 'الارجل',
              routeToNavigate: Legs_Screen()),
          CustomTextField(
            image: 'assets/catogry/beuly.jpg',
            text1: ' :اليوم السابع',
            text2: 'عضلات البطن', routeToNavigate: beilyScreen(),
            // routeToNavigate: Sholder_Screen()
          ),
        ],
      ),
    );
  }
}

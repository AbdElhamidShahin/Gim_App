import 'package:flutter/material.dart';

import 'package:flutter_custom_tab_bar/library.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/Screen Add/beilyScreenAdd.dart';

import '../screens/Screen Add/chest_ScreenAdd.dart';
import '../screens/Screen Add/handsScreenAdd.dart';
import '../screens/Screen Add/lates_ScrreenAdd.dart';
import '../screens/Screen Add/legScreenAdd.dart';
import '../screens/Screen Add/shorterScreenAdd.dart';
import 'custom appbar.dart';

class CustomTabBarDemo extends StatefulWidget {
  final String pageId;

  CustomTabBarDemo({Key? key, required this.pageId}) : super(key: key);

  @override
  _CustomTabBarDemoState createState() => _CustomTabBarDemoState();
}

class _CustomTabBarDemoState extends State<CustomTabBarDemo> {
  final int pageCount = 6; // عدد الصفحات
  late PageController _controller = PageController(initialPage: 0);
  CustomTabBarController _tabBarController = CustomTabBarController();

  @override
  void initState() {
    super.initState();
  }

  Widget getTabbarChild(BuildContext context, int index) {
    final tabTitles =[
      'صدر',
      'ظهر عريض',
      'أكتاف',
      'يدين',
      'أرجل',
      'بطن',
    ];
    return TabBarItem(
        transform: ColorsTransform(
            highlightColor: Colors.white,
            normalColor: Colors.black,
            builder: (context, color) {
              return Container(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                alignment: Alignment.center,
                constraints: BoxConstraints(minWidth: 100),
                child: Text(
                  tabTitles[index],
                  style: GoogleFonts.changa(
                      fontSize: 18, color: color, fontWeight: FontWeight.bold),
                ),
              );
            }),
        index: index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
        text1: 'Exersize All',
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTabBar(
            tabBarController: _tabBarController,
            height: 45,
            itemCount: pageCount,
            builder: getTabbarChild,
            indicator: RoundIndicator(
              color: Colors.amber,
              top: 2.5,
              bottom: 2.5,
              left: 2.5,
              right: 2.5,
              radius: BorderRadius.circular(15),
            ),
            pageController: _controller,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pageCount,
              itemBuilder: (context, index) {
                return PageItem(index, pageId: widget.pageId);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PageItem extends StatelessWidget {
  final int index;
  final String pageId;

  PageItem(this.index, {Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      ChestScreenAdd(
        pageId: pageId,
      ),
      LatesScrreenadd(
        pageId: pageId,
      ),
      Shorterscreenadd(
        pageId: pageId,
      ),
      HandsScreenadd(
        pageId: pageId,
      ),
      Legscreenadd(
        pageId: pageId,
      ),
      Beilyscreenadd(pageId: pageId)
    ];
    return pages[index];
  }
}

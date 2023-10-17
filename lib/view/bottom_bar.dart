import 'package:flutter/material.dart';
import 'package:sport_apk/view/const/colors.dart';
import 'package:sport_apk/view/widget/apk_logo.dart';
import 'package:sport_apk/view/home.dart';
import 'package:sport_apk/view/live_line.dart';
import 'package:sport_apk/view/mathces.dart';
import 'package:sport_apk/view/more.dart';
import 'package:sport_apk/view/news.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int iconSelection = 0;

  List screens = [
    const NewsScreen(),
    const LiveLineScreen(),
    const HomeScreen(),
    const MatchScreen(),
    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BottomNavigationBar(
                currentIndex: iconSelection,
                type: BottomNavigationBarType.shifting,
                backgroundColor: Colors.transparent,
                selectedItemColor: PickColors.kAmber,
                unselectedItemColor: Colors.blueGrey,
                showUnselectedLabels: true,
                selectedFontSize: 16,
                onTap: (value) {
                  setState(() {
                    iconSelection = value;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.newspaper),
                    label: "NEWS",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.live_tv_outlined),
                    label: "LIVE LINE",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "HOME",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.sports_cricket),
                    label: "MATCHES",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz),
                    label: "MORE",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.03),
            child: buildApkLogo(height, width),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                child: screens[iconSelection],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

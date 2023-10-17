import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nahsiba/constants/app_colors.dart';
import 'package:nahsiba/pages/NavPages/account_page.dart';
import 'package:nahsiba/pages/NavPages/history_page.dart';
import 'package:nahsiba/pages/NavPages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    HistoryPage(),
    AccountPage()
  ];

  int currentIndex=0;
  // void onTap(int index){
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
          child: GNav(
            backgroundColor: Colors.red,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.red.shade800,
            gap: 8,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;

                HapticFeedback.lightImpact();
              });
            },
            selectedIndex: currentIndex,
            padding: EdgeInsets.all(12),
            tabs: const [
              GButton(
                text: 'Home',
                icon: Icons.home,

              ),
              GButton(icon: Icons.list_alt_rounded, text: "My Trips",),
              GButton(icon: Icons.person_2_rounded, text: "Account",),
            ],
        )
        ),
        
//        backgroundColor: Colors.red,
        
      ),
    );
    // return Scaffold(
    //   backgroundColor: bWhite,
    //   body: pages[currentIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //     unselectedFontSize: 0,
    //     selectedFontSize: 0,
    //     //nedd to be chnage to fixed if i need to add another colour for BG
    //     type:BottomNavigationBarType.fixed,
    //     backgroundColor: bWhite,
    //     onTap: onTap,
    //     currentIndex: currentIndex,
    //     selectedItemColor: kPrimaryColor,
    //     unselectedItemColor: kPrimaryColor.withOpacity(0.3),
    //     showSelectedLabels: false,
    //     showUnselectedLabels: false,
    //     elevation: 0,
    //     items: [
    //       BottomNavigationBarItem(label:"Home",icon: Icon(Icons.apps)),
    //       BottomNavigationBarItem(label:"Home",icon: Icon(Icons.search)),
    //       BottomNavigationBarItem(label:"Home",icon: Icon(Icons.add)),
    //       BottomNavigationBarItem(label:"Home",icon: Icon(Icons.bookmark)),
    //       BottomNavigationBarItem(label:"Account",icon: Icon(Icons.person)),
    //     ],
    //   ),
    // );
  }
}

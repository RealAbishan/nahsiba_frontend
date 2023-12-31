import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nahsiba/constants/app_colors.dart';
import 'package:nahsiba/pages/NavPages/account_page.dart';
import 'package:nahsiba/pages/NavPages/history_page.dart';
import 'package:nahsiba/pages/NavPages/home_page.dart';
import 'package:nahsiba/pages/NavPages/detail_page.dart';
import 'package:nahsiba/pages/NavPages/home_screen.dart';
import 'package:nahsiba/pages/NavPages/main_page.dart';
import 'package:nahsiba/pages/NavPages/select_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    BusBookingHomeScreen(),
    BusBookingDetailPage(),

    BusBookingSelectPage(),
  ];

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
          child: GNav(
            backgroundColor: kPrimaryColor,
            color: iconColor,
            activeColor: Colors.white,
            tabBackgroundColor: kPrimaryLightColor,
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
      ),
    );
  }
}

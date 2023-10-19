import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nahsiba/constants/app_colors.dart';
import 'package:nahsiba/widgets/app_large_text.dart';
import 'package:nahsiba/pages/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  String location() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Home Page"),
    );
  }
}

//TODO: Need to be Edited

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nahsiba/pages/NavPages/detail_page.dart';
import 'package:nahsiba/pages/NavPages/main_page.dart';
import 'package:nahsiba/pages/NavPages/select_page.dart';

class BusTicketBookingApp extends StatelessWidget {
  BusTicketBookingApp({Key? key}) : super(key: key);
  final appRoute = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const BusBookingMainPage(),
        routes: [
          ShellRoute(
            routes: [
              GoRoute(
                path: "detail",
                builder: (context, state) => const BusBookingDetailPage(),
              ),
              GoRoute(
                path: "seat",
                builder: (context, state) => const BusBookingSelectPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
    );
  }
}

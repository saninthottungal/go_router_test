import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product_manager/pages/headset.dart';
import 'package:product_manager/pages/home.dart';
import 'package:product_manager/pages/mobile.dart';
import 'package:product_manager/pages/speaker.dart';
import 'package:product_manager/pages/watch.dart';

class MyRoutes {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: RouteConstants.home,
        pageBuilder: (context, state) => const MaterialPage(
          child: ScreenHome(),
        ),
      ),
      GoRoute(
        path: '/headset',
        name: RouteConstants.headset,
        pageBuilder: (context, state) => const MaterialPage(
          child: ScreenHeadset(),
        ),
      ),
      GoRoute(
        path: '/speaker',
        name: RouteConstants.speaker,
        pageBuilder: (context, state) => const MaterialPage(
          child: ScreenSpeaker(),
        ),
      ),
      GoRoute(
        path: '/watch',
        name: RouteConstants.watch,
        pageBuilder: (context, state) => const MaterialPage(
          child: ScreenWatch(),
        ),
      ),
      GoRoute(
        path: '/mobile',
        name: RouteConstants.mobile,
        pageBuilder: (context, state) => const MaterialPage(
          child: ScreenMobile(),
        ),
      )
    ],
  );
}

class RouteConstants {
  static const String home = 'home';
  static const String headset = 'headset';
  static const String speaker = 'speaker';
  static const String watch = 'watch';
  static const String mobile = 'mobile';
}

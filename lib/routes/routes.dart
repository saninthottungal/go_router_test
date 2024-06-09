import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product_manager/pages/add_item.dart';
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
        path: '/headset/:title',
        name: RouteConstants.headset,
        pageBuilder: (context, state) {
          final title = state.pathParameters['title'];
          return MaterialPage(
            child: ScreenHeadset(
              title: title,
            ),
          );
        },
      ),
      GoRoute(
        path: '/speaker/:title',
        name: RouteConstants.speaker,
        pageBuilder: (context, state) {
          final title = state.pathParameters['title'];
          return MaterialPage(
            child: ScreenSpeaker(
              title: title,
            ),
          );
        },
      ),
      GoRoute(
        path: '/watch/:title',
        name: RouteConstants.watch,
        pageBuilder: (context, state) {
          final title = state.pathParameters['title'];
          return MaterialPage(
            child: ScreenWatch(
              title: title,
            ),
          );
        },
      ),
      GoRoute(
        path: '/mobile/:title',
        name: RouteConstants.mobile,
        pageBuilder: (context, state) {
          final title = state.pathParameters['title'];
          return MaterialPage(
            child: ScreenMobile(
              title: title,
            ),
          );
        },
      ),
      GoRoute(
        path: '/additem',
        name: RouteConstants.addItem,
        pageBuilder: (context, state) => const MaterialPage(
          child: ScreenAddItem(),
        ),
      ),
    ],
  );
}

class RouteConstants {
  static const String home = 'home';
  static const String headset = 'headset';
  static const String speaker = 'speaker';
  static const String watch = 'watch';
  static const String mobile = 'mobile';
  static const String addItem = 'addItem';
}

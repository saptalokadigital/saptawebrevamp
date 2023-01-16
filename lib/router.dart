import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saptaloka_web_revamp/screens/about_us/about_us_screens.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';
import 'package:saptaloka_web_revamp/screens/home_screen.dart';
import 'package:saptaloka_web_revamp/screens/news/news_screens.dart';
import 'package:saptaloka_web_revamp/screens/solutions/solutions_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'Solutions',
          builder: (BuildContext context, GoRouterState state) {
            return const SolutionsScreen();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/News/:id',
      builder: (BuildContext context, GoRouterState state) {
        return NewsScreens(
          id: state.params['id']!,
        );
      },
    ),
    GoRoute(
      path: '/AboutUs',
      builder: (BuildContext context, GoRouterState state) {
        return AboutUsScreens();
      },
    ),
    GoRoute(
      path: '/ContactUs',
      builder: (BuildContext context, GoRouterState state) {
        return ContactUsScreen();
      },
    ),
  ],
);

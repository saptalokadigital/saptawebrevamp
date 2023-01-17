import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saptaloka_web_revamp/Admin/admin_screens.dart';
import 'package:saptaloka_web_revamp/screens/about_us/about_us_screens.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';
import 'package:saptaloka_web_revamp/screens/home_screen.dart';
import 'package:saptaloka_web_revamp/screens/news/news_screens.dart';
import 'package:saptaloka_web_revamp/screens/solutions/solutions_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/it_solution.dart';
import 'router_const.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: solutionsRoute,
      builder: (BuildContext context, GoRouterState state) {
        return const SolutionsScreen();
      },
    ),
    GoRoute(
      path: newsRoute,
      builder: (BuildContext context, GoRouterState state) {
        return NewsScreens(
          id: state.params['id']!,
        );
      },
    ),
    GoRoute(
      path: aboutUsRoute,
      builder: (BuildContext context, GoRouterState state) {
        return AboutUsScreens();
      },
    ),
    GoRoute(
      path: contactUsRoute,
      builder: (BuildContext context, GoRouterState state) {
        return ContactUsScreen();
      },
    ),
    GoRoute(
      path: itSolutionsRoute,
      builder: (BuildContext context, GoRouterState state) {
        return ItSolutionScreen();
      },
    ),
    GoRoute(
      path: adminRoute,
      builder: (BuildContext context, GoRouterState state) {
        return AdminScreens();
      },
    ),
  ],
);

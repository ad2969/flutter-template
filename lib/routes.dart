import 'package:flutter/material.dart';

enum RouteEnum { home, samplePage }

class RouteData {
  final RouteEnum key;
  final String route;
  final String label;
  final IconData icon;
  final int navbarIdentifier;

  const RouteData({
    required this.key,
    required this.route,
    required this.label,
    required this.icon,
    required this.navbarIdentifier,
  });
}

const Map<RouteEnum, RouteData> routes = {
  RouteEnum.home: RouteData(
    key: RouteEnum.home,
    route: '/home',
    label: 'Home',
    icon: Icons.bolt,
    navbarIdentifier: 0,
  ),
  RouteEnum.samplePage: RouteData(
    key: RouteEnum.samplePage,
    route: '/sample',
    label: 'Sample Page',
    icon: Icons.question_mark,
    navbarIdentifier: 1,
  ),
};

List<RouteEnum> routesInNavBar = routes.keys.toList();

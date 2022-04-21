import 'package:flutter/material.dart';
import 'screens/_index.dart';
import 'shared/widgets/bottom_navigation.dart';
import 'routes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

final RouteObserver<ModalRoute<void>> rootObserver =
    RouteObserver<ModalRoute<void>>();

class _AppState extends State<App> with RouteAware {
  RouteEnum _currentRoute = RouteEnum.home;

  final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();

  final Map<RouteEnum, GlobalKey<NavigatorState>> _navkeys = {
    RouteEnum.home: GlobalKey<NavigatorState>(),
    RouteEnum.samplePage: GlobalKey<NavigatorState>(),
  };

  void _onNavbarTap(RouteEnum destination) {
    if (_currentRoute == destination) {
      // if trying to navigate to the current tab, pop to the first route
      _navkeys[_currentRoute]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      // else, navigate to the new tab
      setState(() {
        _currentRoute = destination;
      });
      rootNavKey.currentState!.pushReplacementNamed(routes[destination]!.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        observers: [rootObserver],
        key: rootNavKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              if (settings.name == routes[RouteEnum.samplePage]!.route) {
                return SamplePage(navKey: _navkeys[RouteEnum.samplePage]!);
              } else {
                return Home(navKey: _navkeys[RouteEnum.home]!);
              }
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigation(
        currentRoute: _currentRoute,
        onNavbarTap: _onNavbarTap,
      ),
    );
  }
}

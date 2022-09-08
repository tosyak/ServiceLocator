import 'package:flutter/material.dart';
import 'package:lesson_di/factories/di_container.dart';
import 'package:lesson_di/my_app.dart';

abstract class MainNavigationRouteNames {
  static const example = '/';
}

class MainNavigationDefault implements MainNavigation {
  MainNavigationDefault();

  @override
  Map<String, Widget Function(BuildContext)> makeRoutes() =>
      <String, Widget Function(BuildContext)>{
        MainNavigationRouteNames.example: (_) =>
            ServiceLocator.instance.makeExampleScreen()
      };

  @override
  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        const widget = Text('Nav Error');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }
}

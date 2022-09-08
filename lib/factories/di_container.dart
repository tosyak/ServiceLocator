import 'package:flutter/material.dart';
import 'package:lesson_di/calc_service.dart';
import 'package:lesson_di/example_view_model.dart';
import 'package:lesson_di/example_widget.dart';
import 'package:lesson_di/main_namigation/mainNavigation.dart';
import 'package:lesson_di/summator.dart';

import '../my_app.dart';

class ServiceLocator {
  static final instance = ServiceLocator._();
  ServiceLocator._();

  final MainNavigation mainNavigation = MainNavigationDefault();

  Summator makeSummator() => const Summator();

  CalculatorService makeCalculatorService() => CalculatorService();

  ExampleWidgetModel makeExampleViewModel() => ExampleCalcViewModel();

  Widget makeExampleScreen() => ExampleWidget();

  Widget makeApp() => MyApp();
}

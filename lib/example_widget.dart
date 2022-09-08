import 'package:flutter/material.dart';
import 'package:lesson_di/factories/di_container.dart';

abstract class ExampleWidgetModel {
  void onPress();
  void onPress2();
}

class ExampleWidget extends StatelessWidget {
  final model =
      ServiceLocator.instance.makeExampleViewModel();
  ExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: model.onPress,
              child: const Text('Push me'),
            ),
            ElevatedButton(
              onPressed: model.onPress2,
              child: const Text('Push meeeee'),
            ),
          ],
        ),
      )),
    );
  }
}

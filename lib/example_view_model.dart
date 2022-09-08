import 'package:lesson_di/calc_service.dart';
import 'package:lesson_di/example_widget.dart';
import 'package:lesson_di/factories/di_container.dart';

class ExampleCalcViewModel implements ExampleWidgetModel {
  final CalculatorService calculatorService =
      ServiceLocator.instance.makeCalculatorService();

  ExampleCalcViewModel();

  @override
  void onPress() {
    final result = calculatorService.calc(1, 2, CalcServiceOperation.summ);
    print(result);
  }

  @override
  void onPress2() {
    print(5);
  }
}

class ExamplePetModel implements ExampleWidgetModel {
  const ExamplePetModel();
  @override
  void onPress() {
    print('result');
  }

  @override
  void onPress2() {
    print('string');
  }
}

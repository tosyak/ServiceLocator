import 'package:lesson_di/factories/di_container.dart';

enum CalcServiceOperation { summ }

class CalculatorService {
  final  summator = ServiceLocator.instance.makeSummator();

   CalculatorService();
  
  int calc(int a, int b, CalcServiceOperation operation) {
    if (operation == CalcServiceOperation.summ) {
      return summator.sum(a, b);
    } else {
      return 0;
    }
  }
}

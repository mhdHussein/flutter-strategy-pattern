import 'package:flutterstrategypattern/clients/counter.dart';

class EvenOddChecker {
  bool isOdd(int value) {
    return (value % 2) != 0;
  }

  bool isEven(int value) {
    return (value % 2) == 0;
  }

  bool isZero(int value) {
    return value == 0;
  }
}

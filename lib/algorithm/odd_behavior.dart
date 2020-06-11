import 'package:flutterstrategypattern/algorithm/even_odd_checker.dart';
import 'package:flutterstrategypattern/algorithm/increment_contract.dart';
import 'package:flutterstrategypattern/value_object.dart';

class OddBehavior extends EvenOddChecker implements IncrementContract {
  ValueObject _valueToCount = ValueObject();
  @override
  void add() {
    if (isZero(_valueToCount.value) || isEven(_valueToCount.value)) {
      ++_valueToCount.value;
    } else {
      _valueToCount.value += 2;
    }
  }
}

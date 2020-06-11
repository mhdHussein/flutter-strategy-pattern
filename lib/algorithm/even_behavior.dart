import 'package:flutterstrategypattern/algorithm/EvenOddChecker.dart';
import 'package:flutterstrategypattern/algorithm/increment_contract.dart';
import 'package:flutterstrategypattern/value_object.dart';

class EvenBehavior extends EvenOddChecker implements IncrementContract {
  ValueObject _valueToCount = ValueObject();

  @override
  void add() {
    if (isZero(_valueToCount.value) || isEven(_valueToCount.value)) {
      _valueToCount.value += 2;
    } else {
      ++_valueToCount.value;
    }
  }
}

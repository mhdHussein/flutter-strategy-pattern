import 'package:flutterstrategypattern/algorithm/increment_contract.dart';

class OddBehavior implements IncrementContract {
  @override
  int add(int value) {
    if (value == 0 || (value % 2) == 0) {
      return ++value;
    } else {
      return value += 2;
    }
  }
}

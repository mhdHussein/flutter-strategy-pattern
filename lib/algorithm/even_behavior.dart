import 'package:flutterstrategypattern/algorithm/increment_contract.dart';

class EvenBehavior implements IncrementContract {
  @override
  int add(int value) {
    if (value == 0 || (value % 2) == 0) {
      return value += 2;
    } else {
      return ++value;
    }
  }
}

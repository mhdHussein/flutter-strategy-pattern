import 'package:flutterstrategypattern/algorithm/increment_contract.dart';

abstract class Counter {
  int value;
  IncrementContract increment;
  int type;

  Counter(this.value);
  int performAddition() {
    return increment.add(value);
  }

  void setValue(int value) {
    this.value = value;
  }

  void setIncrement(IncrementContract contract) {
    this.increment = contract;
  }
}

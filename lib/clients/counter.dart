import 'package:flutterstrategypattern/algorithm/increment_contract.dart';

abstract class Counter {
  IncrementContract increment;

  Counter();
  void performAddition() {
    increment.add();
  }

  void setIncrement(IncrementContract contract) {
    this.increment = contract;
  }
}

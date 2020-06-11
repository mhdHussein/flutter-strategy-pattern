import 'package:flutterstrategypattern/algorithm/increment_contract.dart';

abstract class Counter {
  // composing the increment object
  IncrementContract increment;

  // performing the addition regardless of the algorithm used
  void performAddition() {
    increment.add();
  }

  // setting the algorithm at runtime
  void setIncrement(IncrementContract contract) {
    this.increment = contract;
  }
}

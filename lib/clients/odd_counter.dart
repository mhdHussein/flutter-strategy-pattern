import 'package:flutterstrategypattern/algorithm/odd_behavior.dart';
import 'package:flutterstrategypattern/clients/counter.dart';

class OddCounter extends Counter {
  int value;

  OddCounter(this.value) : super(value) {
    this.setIncrement(OddBehavior());
    print("the counter is odd");
  }
}

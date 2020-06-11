import 'package:flutterstrategypattern/algorithm/even_behavior.dart';
import 'package:flutterstrategypattern/clients/counter.dart';

class EvenCounter extends Counter {
  int value;

  EvenCounter(this.value) : super(value) {
    this.setIncrement(EvenBehavior());
    print("the counter is even");
  }
}

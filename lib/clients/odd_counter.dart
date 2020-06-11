import 'package:flutterstrategypattern/algorithm/odd_behavior.dart';
import 'package:flutterstrategypattern/clients/counter.dart';

class OddCounter extends Counter {
  OddCounter() {
    this.setIncrement(OddBehavior());
  }
}

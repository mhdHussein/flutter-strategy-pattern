import 'package:flutterstrategypattern/algorithm/even_behavior.dart';
import 'package:flutterstrategypattern/clients/counter.dart';

class EvenCounter extends Counter {
  EvenCounter() {
    this.setIncrement(EvenBehavior());
  }
}

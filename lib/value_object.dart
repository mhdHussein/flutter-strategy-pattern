class ValueObject {
  int value;

  static final ValueObject _valueToCount = ValueObject._(0);

  factory ValueObject() {
    return _valueToCount;
  }
  ValueObject._(this.value);
}

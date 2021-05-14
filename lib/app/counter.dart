class OfflineCounter {
  int _counter;

  OfflineCounter(this._counter);

  void increaseCount() {
    _counter++;
  }

  void decreaseCount() {
    _counter--;
  }

  void resetCount() {
    _counter = 0;
  }

  int getCount() {
    return _counter;
  }
}

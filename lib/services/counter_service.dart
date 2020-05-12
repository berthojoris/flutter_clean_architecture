import 'package:injectable/injectable.dart';

@lazySingleton
class CounterService {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
  }

  void doubleCounter() {
    _counter *= 2;
  }
}

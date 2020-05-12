import 'package:flutter_architecture/app/locator.dart';
import 'package:flutter_architecture/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}

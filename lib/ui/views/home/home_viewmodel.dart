import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _title = "Home View";
  String _counterTitle = "Counter ";

  String get title => _title;
  String get couterlbl => '$_counterTitle $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}

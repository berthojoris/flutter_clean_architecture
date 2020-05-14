import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => 'This is the time since epoch in second \n $data';

  @override
  Stream<int> get stream => ecpohUpdate();

  Stream<int> ecpohUpdate() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  @override
  void onData(int data) {
    // Log your data
  }
}

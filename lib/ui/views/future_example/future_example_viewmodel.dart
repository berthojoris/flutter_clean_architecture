import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel {
  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    // throw Exception('This broken dude');
    return "Fetch from server";
  }

  @override
  Future futureToRun() => getDataFromServer(/* Pass your param here */);
}

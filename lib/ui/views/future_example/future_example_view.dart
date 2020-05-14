import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'future_example_viewmodel.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Future Example View",
            ),
          ),
          body: model.isBusy
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : DataProcess(),
        );
      },
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}

class DataProcess extends ViewModelWidget<FutureExampleViewModel> {
  const DataProcess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, FutureExampleViewModel model) {
    if (model.hasError) {
      return Center(
        child: Text("Data error"),
      );
    } else {
      return Center(
        child: Text(model.data),
      );
    }
  }
}

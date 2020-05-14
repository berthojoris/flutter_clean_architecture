import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'stream_example_viewmodel.dart';

class StreamExampleView extends StatelessWidget {
  const StreamExampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Stream Example View",
            ),
          ),
          body: Center(
            child: Text(
              model.title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => StreamExampleViewModel(),
    );
  }
}

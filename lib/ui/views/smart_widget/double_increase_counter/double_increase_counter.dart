import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'double_increase_counter_viewmodel.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  const DoubleIncreaseCounter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Tap to double counter",
                textAlign: TextAlign.center,
              ),
              Text(model.counter.toString())
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DoubleIncreaseViewModel(),
    );
  }
}

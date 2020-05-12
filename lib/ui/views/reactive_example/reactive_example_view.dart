import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/views/smart_widget/double_increase_counter/double_increase_counter.dart';
import 'package:flutter_architecture/ui/views/smart_widget/single_increase_counter/single_increase_counter.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reactive Example View",
        ),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            SingleIncreaseCounter(),
            SizedBox(width: 50),
            DoubleIncreaseCounter(),
          ],
        ),
      ),
    );
  }
}
